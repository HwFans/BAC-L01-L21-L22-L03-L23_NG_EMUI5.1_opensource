



#include <linux/module.h>
#include <linux/printk.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <linux/platform_device.h>
#include <linux/rpmsg.h>

#include "hwsensor.h"
#include "sensor_commom.h"
#include "hw_csi.h"

#define I2S(i) container_of((i), sensor_t, intf)

//lint -save -e846 -e514 -e866 -e30 -e84 -e785 -e64
//lint -save -e826 -e838 -e715 -e747 -e778 -e774 -e732
//lint -save -e650 -e31 -e731 -e528 -e753 -e737

extern struct hw_csi_pad hw_csi_pad;


#define POWER_SETTING_DELAY_1 1
#define POWER_SETTING_DELAY_0 0
#define MCLK_INDEX_2 2
#define MCLK_INDEX_0 0


static bool power_on_status = false;/*false: power off, true:power on*/
char const* imx486hybird_bac_get_name(hwsensor_intf_t* si);
int imx486hybird_bac_config(hwsensor_intf_t* si, void  *argp);
int imx486hybird_bac_power_up(hwsensor_intf_t* si);
int imx486hybird_bac_power_down(hwsensor_intf_t* si);
int imx486hybird_bac_match_id(hwsensor_intf_t* si, void * data);
int imx486hybird_bac_csi_enable(hwsensor_intf_t* si);
int imx486hybird_bac_csi_disable(hwsensor_intf_t* si);

static hwsensor_intf_t *s_intf = NULL;
static hwsensor_vtbl_t s_imx486hybird_bac_vtbl =
{
    .get_name = imx486hybird_bac_get_name,
    .config = imx486hybird_bac_config,
    .power_up = imx486hybird_bac_power_up,
    .power_down = imx486hybird_bac_power_down,
    .match_id = imx486hybird_bac_match_id,
    .csi_enable = imx486hybird_bac_csi_enable,
    .csi_disable = imx486hybird_bac_csi_disable,
};
struct sensor_power_setting hw_imx486hybird_bac_power_setting[] = {

    /*disable sec camera reset*/
    {
        .seq_type = SENSOR_SUSPEND,
        .config_val = SENSOR_GPIO_HIGH,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_0,
    },

    /*MCAM AVDD 2.8V*/
    {
        .seq_type = SENSOR_AVDD,
        .data = (void*)"main-sensor-avdd",
        .config_val = LDO_VOLTAGE_V2P8V,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_0,
    },

    /*MCAM DVDD 1.2V*/
    {
        .seq_type = SENSOR_DVDD,
        .config_val = LDO_VOLTAGE_1P2V,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },

    /*SCAM +��MCAM	IOVDD 1.80V*/
    {
        .seq_type = SENSOR_IOVDD_EN,
        .config_val = SENSOR_GPIO_LOW,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },

    /*MCAM1 AVDD 2.80V*/
    {
        .seq_type = SENSOR_AVDD2,
        .data = (void*)"slave-sensor-avdd",
        .config_val = LDO_VOLTAGE_V2P8V,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_0,
    },

    /*MCAM1 DVDD 1.2V*/
    {
        .seq_type = SENSOR_DVDD2,
        .config_val = LDO_VOLTAGE_1P2V,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },

    /*SCAM MCAM AFVDD 2.85V*/
    {
        .seq_type = SENSOR_VCM_AVDD,
        .data = (void*)"cameravcm-vcc",
        .config_val = LDO_VOLTAGE_V2P85V,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },

    /*MCAM VCM PD Enable*/
    {
        .seq_type = SENSOR_VCM_PWDN,
        .config_val = SENSOR_GPIO_LOW,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },
	/*MCAM MCLK*/
    {
        .seq_type = SENSOR_MCLK,
        .sensor_index = MCLK_INDEX_0,
        .delay = POWER_SETTING_DELAY_1,
    },
    /*SCAM MCLK*/
    {
        .seq_type = SENSOR_MCLK,
        .sensor_index = MCLK_INDEX_2,
        .delay = POWER_SETTING_DELAY_1,
    },
	/*MCAM1 RST*/
    {
        .seq_type = SENSOR_RST,
        .config_val = SENSOR_GPIO_LOW,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },
	/*MCAM2 RST2*/
	{
	
        .seq_type = SENSOR_RST2,
        .config_val = SENSOR_GPIO_LOW,
        .sensor_index = SENSOR_INDEX_INVALID,
        .delay = POWER_SETTING_DELAY_1,
    },
};

atomic_t volatile imx486hybird_bac_powered = ATOMIC_INIT(0);/*init*/
sensor_t s_imx486hybird_bac =
{
    .intf = { .vtbl = &s_imx486hybird_bac_vtbl, },
    .power_setting_array = {
            .size = ARRAY_SIZE(hw_imx486hybird_bac_power_setting),
            .power_setting = hw_imx486hybird_bac_power_setting,
     },
     .p_atpowercnt = &imx486hybird_bac_powered,
    
};

const struct of_device_id
s_imx486hybird_bac_dt_match[] =
{
    {
        .compatible = "huawei,imx486hybird_bac",
        .data = &s_imx486hybird_bac.intf,
    },
    {
    },
};

MODULE_DEVICE_TABLE(of, s_imx486hybird_bac_dt_match);

struct platform_driver
s_imx486hybird_bac_driver =
{
    .driver =
    {
        .name = "huawei,imx486hybird_bac",
        .owner = THIS_MODULE,
        .of_match_table = s_imx486hybird_bac_dt_match,
    },
};

char const* imx486hybird_bac_get_name(hwsensor_intf_t* si)
{
    sensor_t* sensor = NULL;

    if (NULL == si) {
        cam_err("%s. si is NULL.", __func__);
        return NULL;
    }

    sensor = I2S(si);
	if(NULL == sensor->board_info->name){
		cam_err("%s. sensor->board_info->name is NULL.", __func__);
        return NULL;
	}
    return sensor->board_info->name;
}

int imx486hybird_bac_power_up(hwsensor_intf_t* si)
{
    int ret = 0;
    sensor_t* sensor = NULL;

    if (NULL == si) {
        cam_err("%s. si is NULL.", __func__);
        return -EINVAL;
    }

    sensor = I2S(si);
	if ((NULL == sensor->board_info) || (NULL == sensor->board_info->name)){
		cam_err("%s. sensor->board_info or sensor->board_info->name is NULL .", __func__);
		return -EINVAL;
	}
    cam_info("enter %s. index = %d name = %s", __func__, sensor->board_info->sensor_index, sensor->board_info->name);
    if (hw_is_fpga_board()) {
        ret = do_sensor_power_on(sensor->board_info->sensor_index, sensor->board_info->name);
    } else {
        ret = hw_sensor_power_up(sensor);
    }
    if (0 == ret ) {
        cam_info("%s. power up sensor success.", __func__);
    }
    else {
        cam_err("%s. power up sensor fail.", __func__);
    }
    return ret;
}

int imx486hybird_bac_power_down(hwsensor_intf_t* si)
{
    int ret = 0;
    sensor_t* sensor = NULL;

    if (NULL == si) {
        cam_err("%s. si is NULL.", __func__);
        return -EINVAL;
    }

    sensor = I2S(si);
	if ((NULL == sensor->board_info) || (NULL == sensor->board_info->name)){
		cam_err("%s. sensor->board_info or sensor->board_info->name is NULL .", __func__);
		return -EINVAL;
	}
    cam_info("enter %s. index = %d name = %s", __func__, sensor->board_info->sensor_index, sensor->board_info->name);
    if (hw_is_fpga_board()) {
        ret = do_sensor_power_off(sensor->board_info->sensor_index, sensor->board_info->name);
    } else {
        ret = hw_sensor_power_down(sensor);
    }
    if (0 == ret ) {
        cam_info("%s. power down sensor success.", __func__);
    }
    else {
        cam_err("%s. power down sensor fail.", __func__);
    }
    return ret;
}

int imx486hybird_bac_csi_enable(hwsensor_intf_t* si)
{
    return 0;
}

int imx486hybird_bac_csi_disable(hwsensor_intf_t* si)
{
    return 0;
}

int imx486hybird_bac_match_id(hwsensor_intf_t* si, void * data)
{
    sensor_t* sensor = NULL;
    struct sensor_cfg_data *cdata = NULL;
    if ((NULL == si) || (NULL == data)) {
        cam_err("%s. si or  data is NULL.", __func__);
        return -EINVAL;
    }

    sensor = I2S(si);
	if ((NULL == sensor->board_info) || (NULL == sensor->board_info->name)){
		cam_err("%s. sensor->board_info or sensor->board_info->name is NULL .", __func__);
		return -EINVAL;
	}
    cdata = (struct sensor_cfg_data *)data;


    cdata->data = sensor->board_info->sensor_index;
    cam_info("%s name:%s", __func__, sensor->board_info->name);

    return 0;
}

int
imx486hybird_bac_config(
        hwsensor_intf_t* si,
        void  *argp)
{
    struct sensor_cfg_data *data = NULL;
    int ret =0;

    if ((NULL == si) || (NULL == argp)){
        cam_err("%s : si or argp is null", __func__);
        return -EINVAL;
    }

    data = (struct sensor_cfg_data *)argp;
    cam_debug("imx486hybird_bac cfgtype = %d",data->cfgtype);
    switch(data->cfgtype){
        case SEN_CONFIG_POWER_ON:
           if (!power_on_status)
            {
                if(NULL == si->vtbl->power_up){
                    cam_err("%s. si->vtbl->power_up is null.", __func__);
					ret=-EINVAL;
                }else{
                    ret = si->vtbl->power_up(si);
                    if (0 == ret)
                    {
                        power_on_status = true;
                    }else{
                        cam_err("%s. power up fail.", __func__);
                    }
                }
            }
            break;
        case SEN_CONFIG_POWER_OFF:
            if (power_on_status)
            {
                if(NULL == si->vtbl->power_down){
                    cam_err("%s. si->vtbl->power_down is null.", __func__);
					ret=-EINVAL;
                }else{
                    ret = si->vtbl->power_down(si);
                    if (0 == ret)
                    {
                        power_on_status = false;
                    }else{
                        cam_err("%s. power down fail.", __func__);
                    }
                }
            }
            break;
        case SEN_CONFIG_WRITE_REG:
            break;
        case SEN_CONFIG_READ_REG:
            break;
        case SEN_CONFIG_WRITE_REG_SETTINGS:
            break;
        case SEN_CONFIG_READ_REG_SETTINGS:
            break;
        case SEN_CONFIG_ENABLE_CSI:
            break;
        case SEN_CONFIG_DISABLE_CSI:
            break;
        case SEN_CONFIG_MATCH_ID:
            if(NULL == si->vtbl->match_id){
				cam_err("%s. si->vtbl->match_id is null.", __func__);
            }else{
                ret = si->vtbl->match_id(si,argp);
            }
            break;
        default:
            cam_err("%s cfgtype(%d) is error", __func__, data->cfgtype);
            break;
    }
    return ret;
}

int32_t
imx486hybird_bac_platform_probe(
        struct platform_device* pdev)
{
    int rc = 0;
    const struct of_device_id *id = NULL;
    hwsensor_intf_t *intf = NULL;
    sensor_t *sensor = NULL;
    struct device_node *np = NULL;
    cam_notice("enter %s",__func__);

    if (NULL == pdev) {
        cam_err("%s pdev is NULL", __func__);
        return -EINVAL;
    }

    np = pdev->dev.of_node;
    if (NULL == np) {
        cam_err("%s of_node is NULL", __func__);
        return -ENODEV;
    }

    id = of_match_node(s_imx486hybird_bac_dt_match, np);
    if (!id) {
        cam_err("%s none id matched", __func__);
        return -ENODEV;
    }

    intf = (hwsensor_intf_t*)id->data;
	if(NULL == intf){
	    cam_err("%s intf is NULL", __func__);
        return -ENODEV;
	}
	
    sensor = I2S(intf);
	
	if (NULL == sensor){
		cam_err("%s  sensor is NULL", __func__);
        return -ENODEV;

	}

    rc = hw_sensor_get_dt_data(pdev, sensor);
    if (rc < 0) {
        cam_err("%s no dt data rc %d", __func__, rc);
        return -ENODEV;
    }

    sensor->dev = &pdev->dev;
    rc = hwsensor_register(pdev, intf);
    if (rc < 0) {
        cam_err("%s hwsensor_register failed rc %d\n", __func__, rc);
        return -ENODEV;
    }
    s_intf = intf;

    rc = rpmsg_sensor_register(pdev, (void*)sensor);
    if (rc < 0) {
        hwsensor_unregister(intf);
        s_intf = NULL;
        cam_err("%s rpmsg_sensor_register failed rc %d\n", __func__, rc);
        return -ENODEV;
    }

    return rc;
}

int __init
imx486hybird_bac_init_module(void)
{
    cam_notice("enter %s",__func__);
    return platform_driver_probe(&s_imx486hybird_bac_driver,
            imx486hybird_bac_platform_probe);
}

void __exit
imx486hybird_bac_exit_module(void)
{
    rpmsg_sensor_unregister((void*)&s_imx486hybird_bac);
    if (NULL != s_intf) {
        hwsensor_unregister(s_intf);
        s_intf = NULL;
    }
    platform_driver_unregister(&s_imx486hybird_bac_driver);
	return;
}

//lint -restore

/*lint -e528 -esym(528,*)*/
module_init(imx486hybird_bac_init_module);
module_exit(imx486hybird_bac_exit_module);
/*lint -e528 +esym(528,*)*/
/*lint -e753 -esym(753,*)*/
MODULE_DESCRIPTION("imx486hybird_bac");
MODULE_LICENSE("GPL v2");
/*lint -e753 +esym(753,*)*/