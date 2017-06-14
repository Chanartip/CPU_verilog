/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Charles/OneDrive/2017Fall_CSULB/CPU_301/Lab2_Sequence_detector/Sequence_010110_detector.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {7U, 0U};
static unsigned int ng8[] = {8U, 0U};
static unsigned int ng9[] = {9U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {12U, 0U};
static unsigned int ng13[] = {11U, 0U};
static unsigned int ng14[] = {13U, 0U};



static void Always_38_0(char *t0)
{
    char t4[8];
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4144);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    t5 = (t0 + 2248);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t4, 4, 4, 2U, t8, 3, t6, 1);

LAB5:    t9 = ((char*)((ng1)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t9, 4);
    if (t10 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng5)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng11)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng12)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t10 == 1)
        goto LAB24;

LAB25:
LAB27:
LAB26:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB28:    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    goto LAB28;

LAB8:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB10:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB12:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB14:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB16:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB18:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB20:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB28;

LAB22:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t14, 0, 8);
    t3 = (t5 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    t17 = *((unsigned int *)t5);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t3) != 0)
        goto LAB31;

LAB32:    t7 = (t14 + 4);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB33;

LAB34:    t23 = *((unsigned int *)t14);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t7) > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t14) > 0)
        goto LAB39;

LAB40:    memcpy(t13, t9, 8);

LAB41:    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 3);
    goto LAB28;

LAB24:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t14, 0, 8);
    t3 = (t5 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    t17 = *((unsigned int *)t5);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t3) != 0)
        goto LAB44;

LAB45:    t7 = (t14 + 4);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB46;

LAB47:    t23 = *((unsigned int *)t14);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t7) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t14) > 0)
        goto LAB52;

LAB53:    memcpy(t13, t9, 8);

LAB54:    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 3);
    goto LAB28;

LAB29:    *((unsigned int *)t14) = 1;
    goto LAB32;

LAB31:    t6 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB32;

LAB33:    t8 = ((char*)((ng1)));
    goto LAB34;

LAB35:    t9 = ((char*)((ng6)));
    goto LAB36;

LAB37:    xsi_vlog_unsigned_bit_combine(t13, 3, t8, 3, t9, 3);
    goto LAB41;

LAB39:    memcpy(t13, t8, 8);
    goto LAB41;

LAB42:    *((unsigned int *)t14) = 1;
    goto LAB45;

LAB44:    t6 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB45;

LAB46:    t8 = ((char*)((ng1)));
    goto LAB47;

LAB48:    t9 = ((char*)((ng2)));
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t13, 3, t8, 3, t9, 3);
    goto LAB54;

LAB52:    memcpy(t13, t8, 8);
    goto LAB54;

}

static void Always_55_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4160);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);

LAB11:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(57, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2248);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB11;

}

static void Always_62_2(char *t0)
{
    char t12[8];
    char t13[8];
    char t22[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4176);
    *((int *)t2) = 1;
    t3 = (t0 + 3856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 2248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB5:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB18;

LAB19:
LAB21:
LAB20:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 3);

LAB22:    goto LAB2;

LAB6:    xsi_set_current_line(64, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 1);
    t11 = (t0 + 2088);
    xsi_vlogvar_assign_value(t11, t9, 1, 0, 3);
    goto LAB22;

LAB8:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 3);
    goto LAB22;

LAB10:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 3);
    goto LAB22;

LAB12:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 3);
    goto LAB22;

LAB14:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 3);
    goto LAB22;

LAB16:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t4 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t3) != 0)
        goto LAB25;

LAB26:    t7 = (t13 + 4);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t7);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB27;

LAB28:    t39 = *((unsigned int *)t13);
    t40 = (~(t39));
    t41 = *((unsigned int *)t7);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t7) > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t13) > 0)
        goto LAB33;

LAB34:    memcpy(t12, t43, 8);

LAB35:    t44 = (t0 + 1928);
    xsi_vlogvar_assign_value(t44, t12, 0, 0, 1);
    t45 = (t0 + 2088);
    xsi_vlogvar_assign_value(t45, t12, 1, 0, 3);
    goto LAB22;

LAB18:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 3);
    goto LAB22;

LAB23:    *((unsigned int *)t13) = 1;
    goto LAB26;

LAB25:    t5 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB26;

LAB27:    t9 = (t0 + 1368U);
    t10 = *((char **)t9);
    memset(t23, 0, 8);
    t9 = (t10 + 4);
    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t10);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t9) != 0)
        goto LAB38;

LAB39:    t29 = (t23 + 4);
    t30 = *((unsigned int *)t23);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB40;

LAB41:    t34 = *((unsigned int *)t23);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t29) > 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t23) > 0)
        goto LAB46;

LAB47:    memcpy(t22, t38, 8);

LAB48:    goto LAB28;

LAB29:    t43 = ((char*)((ng11)));
    goto LAB30;

LAB31:    xsi_vlog_unsigned_bit_combine(t12, 4, t22, 4, t43, 4);
    goto LAB35;

LAB33:    memcpy(t12, t22, 8);
    goto LAB35;

LAB36:    *((unsigned int *)t23) = 1;
    goto LAB39;

LAB38:    t11 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB39;

LAB40:    t33 = ((char*)((ng11)));
    goto LAB41;

LAB42:    t38 = ((char*)((ng13)));
    goto LAB43;

LAB44:    xsi_vlog_unsigned_bit_combine(t22, 4, t33, 4, t38, 4);
    goto LAB48;

LAB46:    memcpy(t22, t33, 8);
    goto LAB48;

}


extern void work_m_00000000002423820826_1792634891_init()
{
	static char *pe[] = {(void *)Always_38_0,(void *)Always_55_1,(void *)Always_62_2};
	xsi_register_didat("work_m_00000000002423820826_1792634891", "isim/Squence_010110_detector_tb_isim_beh.exe.sim/work/m_00000000002423820826_1792634891.didat");
	xsi_register_executes(pe);
}
