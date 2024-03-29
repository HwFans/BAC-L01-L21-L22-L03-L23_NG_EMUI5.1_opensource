#ifndef __HISI_HISEE_UPGRADE_H__
#define __HISI_HISEE_UPGRADE_H__

#define HISEE_OLD_COS_IMAGE_ERROR      (-8000)
#define HISEE_IS_OLD_COS_IMAGE     (-8001)

#define HISEE_MISC_VERSION0            (0x20)

/* MACRO to count one bits */
#define COUNT_ONE_BITS(number, BitCount) \
do { \
	unsigned int tmp_num = number; \
	BitCount = 0; \
	while (tmp_num)	{ \
		tmp_num = tmp_num & (tmp_num - 1); \
		BitCount = BitCount + 1; \
	}			\
} while (0)

int cos_image_upgrade_func(void *buf, int para);
int misc_image_upgrade_func(void *buf, int para);

ssize_t hisee_has_new_cos_show(struct device *dev, struct device_attribute *attr, char *buf);
ssize_t hisee_check_upgrade_show(struct device *dev, struct device_attribute *attr, char *buf);

#endif
