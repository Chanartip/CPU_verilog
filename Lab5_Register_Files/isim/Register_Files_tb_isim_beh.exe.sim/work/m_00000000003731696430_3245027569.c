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
static const char *ng0 = "C:/Users/Charles/OneDrive/2017Fall_CSULB/CPU_301/Lab5_Register_Files/Register_Files_tb.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {8, 0};
static int ng4[] = {7, 0};
static const char *ng5 = "Time %t || R %h || S %h";
static int ng6[] = {12, 0};
static const char *ng7 = " ps";



static int sp_do_reset(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(91, ng0);

LAB5:    xsi_set_current_line(93, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(94, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t1 + 3064);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    xsi_set_current_line(95, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(96, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 3064);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    goto LAB4;

}

static int sp_dump_mem(char *t1, char *t2)
{
    char t8[8];
    char t20[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(112, ng0);
    xsi_set_current_line(112, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t1 + 4024);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);

LAB5:    t4 = (t1 + 4024);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB6;

LAB7:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    xsi_set_current_line(112, ng0);

LAB8:    xsi_set_current_line(113, ng0);
    t15 = (t2 + 88U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    xsi_wp_set_status(t17, 1);
    *((char **)t3) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(114, ng0);
    t18 = ((char*)((ng2)));
    t19 = (t1 + 3224);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3864);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 16);
    xsi_set_current_line(116, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3384);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(117, ng0);
    t4 = (t1 + 4024);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3544);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 3);
    xsi_set_current_line(118, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t1 + 4024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_signed_minus(t8, 32, t4, 32, t7, 32);
    t9 = (t1 + 3704);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 3);
    xsi_set_current_line(119, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(121, ng0);
    t7 = (t2 + 56U);
    t9 = *((char **)t7);
    xsi_process_wait(t9, 1000LL);
    *((char **)t3) = &&LAB11;
    t0 = 1;
    goto LAB1;

LAB11:    xsi_set_current_line(121, ng0);
    t15 = xsi_vlog_time(t20, 1000.0000000000000, 1000.0000000000000);
    t16 = (t1 + 2344U);
    t17 = *((char **)t16);
    t16 = (t1 + 2504U);
    t18 = *((char **)t16);
    t16 = (t1 + 1280);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t16, (char)118, t20, 64, (char)118, t17, 16, (char)118, t18, 16);
    xsi_set_current_line(112, ng0);
    t4 = (t1 + 4024);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 4024);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB5;

}

static int sp_write_pattern(char *t1, char *t2)
{
    char t8[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1712);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(134, ng0);
    xsi_set_current_line(134, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t1 + 4184);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);

LAB5:    t4 = (t1 + 4184);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB6;

LAB7:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    xsi_set_current_line(134, ng0);

LAB8:    xsi_set_current_line(135, ng0);
    t15 = (t2 + 88U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    xsi_wp_set_status(t17, 1);
    *((char **)t3) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(136, ng0);
    t18 = ((char*)((ng1)));
    t19 = (t1 + 3224);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t4 = (t1 + 4184);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3384);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 3);
    xsi_set_current_line(138, ng0);
    t4 = (t1 + 4184);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t7 = (t8 + 4);
    t9 = (t6 + 4);
    memcpy(t8, t6, 8);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 4294967295U);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t20 & 4294967295U);
    t15 = (t1 + 3864);
    xsi_vlogvar_assign_value(t15, t8, 0, 0, 16);
    xsi_set_current_line(139, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3544);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(140, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3704);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(134, ng0);
    t4 = (t1 + 4184);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 4184);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB5;

}

static void Always_57_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 2904);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2904);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_59_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);

LAB4:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3864);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = ((char*)((ng1)));
    t5 = ((char*)((ng3)));
    xsi_vlog_setTimeFormat(*((unsigned int *)t4), *((unsigned int *)t3), ng7, 0, *((unsigned int *)t5));
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 5160);
    t3 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB7:    t6 = (t0 + 5256);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB9:    if (t14 != 0)
        goto LAB10;

LAB5:    t7 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t7);

LAB6:    t15 = (t0 + 5256);
    t16 = *((char **)t15);
    t15 = (t0 + 848);
    t17 = (t0 + 5160);
    t18 = 0;
    xsi_delete_subprogram_invocation(t15, t16, t0, t17, t18);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5160);
    t3 = (t0 + 1280);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB13:    t6 = (t0 + 5256);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB15:    if (t14 != 0)
        goto LAB16;

LAB11:    t7 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t7);

LAB12:    t15 = (t0 + 5256);
    t16 = *((char **)t15);
    t15 = (t0 + 1280);
    t17 = (t0 + 5160);
    t18 = 0;
    xsi_delete_subprogram_invocation(t15, t16, t0, t17, t18);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5160);
    t3 = (t0 + 1712);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB19:    t6 = (t0 + 5256);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB21:    if (t14 != 0)
        goto LAB22;

LAB17:    t7 = (t0 + 1712);
    xsi_vlog_subprogram_popinvocation(t7);

LAB18:    t15 = (t0 + 5256);
    t16 = *((char **)t15);
    t15 = (t0 + 1712);
    t17 = (t0 + 5160);
    t18 = 0;
    xsi_delete_subprogram_invocation(t15, t16, t0, t17, t18);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5160);
    t3 = (t0 + 1280);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB25:    t6 = (t0 + 5256);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB27:    if (t14 != 0)
        goto LAB28;

LAB23:    t7 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t7);

LAB24:    t15 = (t0 + 5256);
    t16 = *((char **)t15);
    t15 = (t0 + 1280);
    t17 = (t0 + 5160);
    t18 = 0;
    xsi_delete_subprogram_invocation(t15, t16, t0, t17, t18);

LAB1:    return;
LAB8:;
LAB10:    t6 = (t0 + 5352U);
    *((char **)t6) = &&LAB7;
    goto LAB1;

LAB14:;
LAB16:    t6 = (t0 + 5352U);
    *((char **)t6) = &&LAB13;
    goto LAB1;

LAB20:;
LAB22:    t6 = (t0 + 5352U);
    *((char **)t6) = &&LAB19;
    goto LAB1;

LAB26:;
LAB28:    t6 = (t0 + 5352U);
    *((char **)t6) = &&LAB25;
    goto LAB1;

}


extern void work_m_00000000003731696430_3245027569_init()
{
	static char *pe[] = {(void *)Always_57_0,(void *)Initial_59_1};
	static char *se[] = {(void *)sp_do_reset,(void *)sp_dump_mem,(void *)sp_write_pattern};
	xsi_register_didat("work_m_00000000003731696430_3245027569", "isim/Register_Files_tb_isim_beh.exe.sim/work/m_00000000003731696430_3245027569.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
