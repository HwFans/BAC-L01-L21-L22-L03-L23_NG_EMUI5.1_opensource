/******************************************************************************

                  版权所有 (C), 2001-2011, 华为技术有限公司

 ******************************************************************************
  文 件 名   : dmac_resource.h
  版 本 号   : 初稿
  作    者   : z00326350
  生成日期   : 2015年4月31日
  最近修改   :
  功能描述   : dmac_resource.c 的头文件
  函数列表   :
  修改历史   :
  1.日    期   : 2015年1月31日
    作    者   : z00326350
    修改内容   : 创建文件

******************************************************************************/

#ifndef __DMAC_RESOURCE_H__
#define __DMAC_RESOURCE_H__

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif


/*****************************************************************************
  1 其他头文件包含
*****************************************************************************/
#include "oal_types.h"
#include "oal_queue.h"
#include "mac_resource.h"
#include "mac_device.h"
#include "dmac_device.h"

#undef  THIS_FILE_ID
#define THIS_FILE_ID OAM_FILE_ID_DMAC_RESOURCE_H

/*****************************************************************************
  2 宏定义
*****************************************************************************/

/*****************************************************************************
  3 枚举定义
*****************************************************************************/


/*****************************************************************************
  4 全局变量声明
*****************************************************************************/


/*****************************************************************************
  5 消息头定义
*****************************************************************************/


/*****************************************************************************
  6 消息定义
*****************************************************************************/


/*****************************************************************************
  7 STRUCT定义
*****************************************************************************/

/* 存储dmac device结构的资源结构体 */
typedef struct
{
    dmac_device_stru    ast_dmac_dev_info[MAC_RES_MAX_DEV_NUM];
    oal_queue_stru      st_queue;
    oal_uint            aul_idx[MAC_RES_MAX_DEV_NUM];
    oal_uint8           auc_user_cnt[MAC_RES_MAX_DEV_NUM];
#ifdef _PRE_WLAN_FEATURE_DOUBLE_CHIP
    oal_uint8           auc_resv[2];   /* 单芯片下MAC_RES_MAX_DEV_NUM是1，双芯片下MAC_RES_MAX_DEV_NUM是2 */
#else
    oal_uint8           auc_resv[3];
#endif
}dmac_res_device_stru;

/* 存储dmac res资源结构体 */
typedef struct
{
    dmac_res_device_stru st_dmac_dev_res;
}dmac_res_stru;

/*****************************************************************************
  8 UNION定义
*****************************************************************************/


/*****************************************************************************
  9 OTHERS定义
*****************************************************************************/
extern dmac_res_stru    g_st_dmac_res;

/*****************************************************************************
  10 函数声明
*****************************************************************************/
extern oal_uint32  dmac_res_alloc_mac_dev(oal_uint32 ul_dev_idx);
extern oal_uint32  dmac_res_free_mac_dev(oal_uint32 ul_dev_idx);
extern dmac_device_stru  *dmac_res_get_mac_dev(oal_uint32 ul_dev_idx);
extern oal_uint32  dmac_res_init(oal_void);

#ifdef __cplusplus
    #if __cplusplus
        }
    #endif
#endif

#endif /* end of mac_resource.h */
