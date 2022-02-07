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
static const char *ng0 = "D:/Test_Ise/lab6/tb_carrylookahead.vhd";



static void work_a_0716551076_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
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

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3216);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 5150);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, 0LL);
    t9 = (50 * 1000LL);
    t10 = (t0 + 5154);
    t12 = (t0 + 3280);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 4U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 4U, t9);
    t17 = (100 * 1000LL);
    t18 = (t0 + 5158);
    t20 = (t0 + 3280);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 4U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 4U, t17);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 5162);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, 0LL);
    t9 = (50 * 1000LL);
    t10 = (t0 + 5166);
    t12 = (t0 + 3344);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 4U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 4U, t9);
    t17 = (100 * 1000LL);
    t18 = (t0 + 5170);
    t20 = (t0 + 3344);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 4U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 4U, t17);
    xsi_set_current_line(103, ng0);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_0716551076_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0716551076_2372691052_p_0};
	xsi_register_didat("work_a_0716551076_2372691052", "isim/tb_carrylookahead_isim_beh.exe.sim/work/a_0716551076_2372691052.didat");
	xsi_register_executes(pe);
}
