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
static const char *ng0 = "C:/Users/Charles/OneDrive/2017Fall_CSULB/CPU_301/clock_divider.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {1, 0};
static int ng5[] = {500, 0};
static int ng6[] = {2, 0};



static void Always_45_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t32[8];
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
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    char *t38;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3144);
    *((int *)t2) = 1;
    t3 = (t0 + 2856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1184U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);

LAB14:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1904);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t7 = *((char **)t5);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_divide(t6, 32, t7, 32, t5, 32);
    t8 = ((char*)((ng6)));
    memset(t30, 0, 8);
    xsi_vlog_signed_divide(t30, 32, t6, 32, t8, 32);
    memset(t31, 0, 8);
    xsi_vlog_signed_greatereq(t31, 32, t4, 32, t30, 32);
    t21 = (t31 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t31);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);

LAB13:    xsi_set_current_line(52, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1904);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB12;

LAB15:    xsi_set_current_line(62, ng0);

LAB18:    xsi_set_current_line(63, ng0);
    t22 = (t0 + 1744);
    t28 = (t22 + 56U);
    t29 = *((char **)t28);
    memset(t32, 0, 8);
    t33 = (t29 + 4);
    t14 = *((unsigned int *)t33);
    t15 = (~(t14));
    t16 = *((unsigned int *)t29);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t33) == 0)
        goto LAB19;

LAB21:    t34 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t34) = 1;

LAB22:    t35 = (t32 + 4);
    t36 = (t29 + 4);
    t19 = *((unsigned int *)t29);
    t20 = (~(t19));
    *((unsigned int *)t32) = t20;
    *((unsigned int *)t35) = 0;
    if (*((unsigned int *)t36) != 0)
        goto LAB24;

LAB23:    t27 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t27 & 1U);
    t37 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t37 & 1U);
    t38 = (t0 + 1744);
    xsi_vlogvar_assign_value(t38, t32, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB17;

LAB19:    *((unsigned int *)t32) = 1;
    goto LAB22;

LAB24:    t23 = *((unsigned int *)t32);
    t24 = *((unsigned int *)t36);
    *((unsigned int *)t32) = (t23 | t24);
    t25 = *((unsigned int *)t35);
    t26 = *((unsigned int *)t36);
    *((unsigned int *)t35) = (t25 | t26);
    goto LAB23;

}


extern void work_m_00000000004073975265_1069848932_init()
{
	static char *pe[] = {(void *)Always_45_0};
	xsi_register_didat("work_m_00000000004073975265_1069848932", "isim/Universal_Shift_Register_isim_beh.exe.sim/work/m_00000000004073975265_1069848932.didat");
	xsi_register_executes(pe);
}
