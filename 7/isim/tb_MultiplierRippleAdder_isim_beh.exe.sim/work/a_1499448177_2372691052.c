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
static const char *ng0 = "D:/Test_Ise/lab7/tb_MultiplierRippleAdder.vhd";



static void work_a_1499448177_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int64 t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int64 t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4698);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, 0LL);
    t9 = (50 * 1000LL);
    t10 = (t0 + 4702);
    t12 = (t0 + 2896);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 4U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 4U, t9);
    t17 = (100 * 1000LL);
    t18 = (t0 + 4706);
    t20 = (t0 + 2896);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 4U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 4U, t17);
    t25 = (150 * 1000LL);
    t26 = (t0 + 4710);
    t28 = (t0 + 2896);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 4U);
    xsi_driver_subsequent_trans_delta(t28, 0U, 4U, t25);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4714);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_delta(t4, 0U, 5U, 0LL);
    t9 = (80 * 1000LL);
    t10 = (t0 + 4719);
    t12 = (t0 + 2960);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 5U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 5U, t9);
    t17 = (130 * 1000LL);
    t18 = (t0 + 4724);
    t20 = (t0 + 2960);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 5U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 5U, t17);
    t25 = (200 * 1000LL);
    t26 = (t0 + 4729);
    t28 = (t0 + 2960);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 5U);
    xsi_driver_subsequent_trans_delta(t28, 0U, 5U, t25);
    t33 = (250 * 1000LL);
    t34 = (t0 + 4734);
    t36 = (t0 + 2960);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t34, 5U);
    xsi_driver_subsequent_trans_delta(t36, 0U, 5U, t33);
    xsi_set_current_line(92, ng0);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_1499448177_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1499448177_2372691052_p_0};
	xsi_register_didat("work_a_1499448177_2372691052", "isim/tb_MultiplierRippleAdder_isim_beh.exe.sim/work/a_1499448177_2372691052.didat");
	xsi_register_executes(pe);
}
