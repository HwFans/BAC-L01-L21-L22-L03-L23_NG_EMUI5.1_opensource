#ifndef _BITPLANE_HEADER_
#define _BITPLANE_HEADER_

#include "public.h"

#define WAIT_NO_ISR_MAX 400

//control registers
#define    REG_BPD_START                      0x000
#define    REG_BPD_CFG0                       0x004
#define    REG_BPD_CFG1                       0x008
#define    REG_BPD_CFG2                       0x00c
#define    REG_BPD_CFG3                       0x010
#define    REG_BPD_CFG4                       0x014
#define    REG_BPD_CFG5                       0x018
#define    REG_BPD_CFG6                       0x01c
#define    REG_BPD_CFG7                       0x020
#define    REG_BPD_CFG8                       0x024
#define    REG_BPD_CFG9                       0x028
#define    REG_BPD_CFG10                      0x02c
#define    REG_BPD_CFG11                      0x030
//state registers
#define    REG_BPD_STATE                      0x040
#define    REG_BPD_VCTRL_STATE                0x048
//emar & timeout registers
#define    REG_BPD_EMAR_ID                    0x030
//output registers
#define    REG_BPD_OUT0                       0x050
#define    REG_BPD_OUT1                       0x054
//safe register
#define    REG_BPD_SAFE_INT_MASK              0x058
#define    REG_BPD_SAFE_INT_STATE             0x05c

#define    REG_BPD_SAFE_INT_MASK              0x058
#define    REG_BPD_SAFE_INT_STATE             0x05c
#define    REG_BPD_NORM_INT_MASK              0x034
#define    REG_BPD_NORM_INT_STATE             0x044

#ifdef ENV_SOS_KERNEL
#define    REG_BPD_INT_MASK                   REG_BPD_SAFE_INT_MASK
#define    REG_BPD_INT_STATE                  REG_BPD_SAFE_INT_STATE
#else
#define    REG_BPD_INT_MASK                   REG_BPD_NORM_INT_MASK
#define    REG_BPD_INT_STATE                  REG_BPD_NORM_INT_STATE
#endif

//�Ĵ�����
typedef struct
{
    USIGN bpd_start:                            1;
    USIGN reserved:                             31;
} BPD_START;

typedef struct
{
    USIGN bit_offset:                           8;
    USIGN pic_mbwidth_mod3:                     2;
    USIGN pic_mbheigt_mod3:                     2;
    USIGN mvmode_en:                            1;
    USIGN overflag_en:                          1;
    USIGN pic_coding_type:                      2;
    USIGN pic_structure:                        2;
    USIGN profile:                              2;
    USIGN safe_flag:                            1;
    USIGN reserved:                             11;
} BPD_CFG0;

typedef struct
{
    USIGN bs_staddr:                            32;
} BPD_CFG1;

typedef struct
{
    USIGN pic_mbwidth_m1:                       16;
    USIGN pic_mbheight_m1:                      16;
} BPD_CFG2;

typedef struct
{
    USIGN bp_sride:                             12;
    USIGN reserved:                             20;
} BPD_CFG3;

typedef struct
{
    USIGN bp0_staddr:                           32;
} BPD_CFG4;

typedef struct
{
    USIGN bp1_staddr:                           32;
} BPD_CFG5;

typedef struct
{
    USIGN bp2_staddr:                           32;
} BPD_CFG6;

typedef struct
{
    USIGN bp3_staddr:                           32;
} BPD_CFG7;

typedef struct
{
    USIGN bp4_staddr:                           32;
} BPD_CFG8;

typedef struct
{
    USIGN bp5_staddr:                           32;
} BPD_CFG9;

typedef struct
{
    USIGN bp6_staddr:                           32;
} BPD_CFG10;

typedef struct
{
    USIGN axi_id:                               4;
    USIGN axi_rd_outstanding:                   4;
    USIGN axi_wr_outstanding:                   4;
    USIGN bpd_axi_sep       :                   3;
    USIGN reserved          :                   17;
} BPD_CFG11;

typedef struct
{
    USIGN intm_bpd_dec_over:                    1;
    USIGN intm_bpd_dec_err:                     1;
    USIGN reserved:                             30;
} BPD_INT_MASK;

typedef struct
{
    USIGN intrs_bpd_dec_over:                   1;
    USIGN intrs_bpd_dec_err:                    1;
    USIGN bpd_rst_busy:                         1;
    USIGN reserved:                             29;
} BPD_STATE;

typedef struct
{
    USIGN intrms_bpd_dec_over:                  1;
    USIGN intrms_bpd_dec_err:                   1;
    USIGN reserved:                             30;
} BPD_INT_STATE;

typedef struct
{
    USIGN bpd_ctrl_state:                       32;
} BPD_CTRL_STATE;

typedef struct
{
    USIGN eaten_lenth:                          32;
} BPD_OUT0;

typedef struct
{
    USIGN MVTYPEMBMode:                         4;
    USIGN SKIPMBMode:                           4;
    USIGN DIRECTMBMode:                         4;
    USIGN ACPREDMode:                           4;
    USIGN OVERFLAGSMode:                        4;
    USIGN FIELDTXMode:                          4;
    USIGN FORWARDMBMode:                        4;
    USIGN CONDOVER:                             2;
    USIGN reserved:                             2;
} BPD_OUT1;

typedef struct
{
    SINT32 BpdStart;//REG_BPD_START
    SINT32 BpdIntState;//REG_BPD_INT_STATE
    SINT32 BpdIntMask;//REG_BPD_INT_MASK
    SINT32 BpdCfg0;//REG_BPD_CFG0
    SINT32 BpdCfg1;//REG_BPD_CFG1
    SINT32 BpdCfg2;//REG_BPD_CFG2
    SINT32 BpdCfg3;//REG_BPD_CFG3
    SINT32 BpdCfg4;//REG_BPD_CFG4
    SINT32 BpdCfg5;//REG_BPD_CFG5
    SINT32 BpdCfg6;//REG_BPD_CFG6
    SINT32 BpdCfg7;//REG_BPD_CFG7
    SINT32 BpdCfg8;//REG_BPD_CFG8
    SINT32 BpdCfg9;//REG_BPD_CFG9
    SINT32 BpdCfg10;//REG_BPD_CFG10
    SINT32 BpdCfg11;//REG_BPD_CFG11
}OMXBPD_REG_CFG_S;

typedef struct
{
    SINT32 BpdIntMask;            //REG_BPD_INT_MASK
    SINT32 BpdState;              //REG_BPD_STATE
    USIGN  BpdOut0EatenLenth;     //REG_BPD_OUT0
    USIGN  BpdOut1MvtypembMode;   //REG_BPD_OUT1
    USIGN  BpdOut1SkipmbMode;
    USIGN  BpdOut1DirectmbMode;
    USIGN  BpdOut1AcpredMode;
    USIGN  BpdOut1OverflagsMode;
    USIGN  BpdOut1FieldtxMode;
    USIGN  BpdOut1ForwardmbMode;
    USIGN  BpdOut1Condover;
    USIGN  BpdOut1Reserved;
}OMXBPD_REG_STATE_S;

typedef struct
{
    UINT32 GlbResetFlag;
    OMXBPD_REG_CFG_S   BpsRegCfg;
    OMXBPD_REG_STATE_S BpsRegState;
}
OMXBPD_REG_S;

SINT32 BPD_ConfigReg(OMXBPD_REG_S *pBpdReg);

#endif

