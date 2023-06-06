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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/nas/lrz/home/ge85zic/VHDL_LAB/xorop/mulop.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_1306455576397931277_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533613331_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6400U);
    t3 = (t0 + 6686);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 15;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (15 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t4 = (t0 + 6400U);
    t1 = xsi_base_array_concat(t1, t5, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t6 = (t0 + 1968U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t9 = (1U + 16U);
    memcpy(t6, t1, t9);

LAB3:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6416U);
    t3 = (t0 + 6719);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 15;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (15 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t4 = (t0 + 6416U);
    t1 = xsi_base_array_concat(t1, t5, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t9 = (1U + 16U);
    memcpy(t6, t1, t9);

LAB6:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 6480U);
    t3 = (t0 + 2088U);
    t4 = *((char **)t3);
    t3 = (t0 + 6480U);
    t6 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t5, t2, t1, t4, t3);
    t7 = (t5 + 12U);
    t9 = *((unsigned int *)t7);
    t14 = (1U * t9);
    t10 = (34U != t14);
    if (t10 == 1)
        goto LAB8;

LAB9:    t11 = (t0 + 4232);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 34U);
    xsi_driver_first_trans_fast(t11);
    t1 = (t0 + 4120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(64, ng0);
    t7 = (t0 + 6702);
    t12 = (t0 + 1968U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    memcpy(t12, t7, 17U);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t7 = (t0 + 6735);
    t12 = (t0 + 2088U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    memcpy(t12, t7, 17U);
    goto LAB6;

LAB8:    xsi_size_not_matching(34U, t14, 0);
    goto LAB9;

}

static void work_a_3400501926_3212880686_p_1(char *t0)
{
    char t9[16];
    char t12[16];
    char t25[16];
    char t26[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t27;

LAB0:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (33 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2328U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 16U);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (33 - 32);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2208U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 17U);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 6512U);
    t6 = (t0 + 2208U);
    t7 = *((char **)t6);
    t6 = (t0 + 6496U);
    t8 = ieee_p_3620187407_sub_1306455576397931277_3965413181(IEEE_P_3620187407, t2, t1, t7, t6);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 6512U);
    t1 = xsi_base_array_concat(t1, t25, t6, (char)99, (unsigned char)2, (char)97, t2, t7, (char)101);
    t10 = (t0 + 2208U);
    t11 = *((char **)t10);
    t10 = (t0 + 6496U);
    t13 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t12, t1, t25, t11, t10);
    t14 = (t0 + 6752);
    t16 = (t26 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 16;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t27 = (16 - 0);
    t3 = (t27 * 1);
    t3 = (t3 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t3;
    t17 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t9, t13, t12, t14, t26);
    t18 = (t9 + 12U);
    t3 = *((unsigned int *)t18);
    t4 = (1U * t3);
    t8 = (17U != t4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t20 = (t0 + 4296);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t17, 17U);
    xsi_driver_first_trans_fast(t20);

LAB3:    t1 = (t0 + 4136);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(92, ng0);
    t10 = (t0 + 2328U);
    t11 = *((char **)t10);
    t13 = ((IEEE_P_2592010699) + 4000);
    t14 = (t0 + 6512U);
    t10 = xsi_base_array_concat(t10, t12, t13, (char)99, (unsigned char)2, (char)97, t11, t14, (char)101);
    t15 = (t0 + 2208U);
    t16 = *((char **)t15);
    t15 = (t0 + 6496U);
    t17 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t9, t10, t12, t16, t15);
    t18 = (t9 + 12U);
    t3 = *((unsigned int *)t18);
    t4 = (1U * t3);
    t19 = (17U != t4);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 4296);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t17, 17U);
    xsi_driver_first_trans_fast(t20);
    goto LAB3;

LAB5:    xsi_size_not_matching(17U, t4, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(17U, t4, 0);
    goto LAB8;

}

static void work_a_3400501926_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(101, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4360);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 4152);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0,(void *)work_a_3400501926_3212880686_p_1,(void *)work_a_3400501926_3212880686_p_2};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_idea_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
