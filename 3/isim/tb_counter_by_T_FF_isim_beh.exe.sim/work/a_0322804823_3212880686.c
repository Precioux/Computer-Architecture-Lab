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
static const char *ng0 = "C:/Users/office/Desktop/dars/trm5/computer organization and design/lab/3/lab-3/lab-3/T_FF_rstAsynchronous.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0322804823_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3416);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB10;

LAB11:    t9 = (unsigned char)0;

LAB12:    if (t9 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3416);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB7:    xsi_set_current_line(53, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t13 = *((unsigned char *)t7);
    t14 = (t13 == (unsigned char)2);
    if (t14 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB16;

LAB17:
LAB14:    goto LAB8;

LAB10:    t1 = (t0 + 1152U);
    t12 = xsi_signal_has_event(t1);
    t9 = t12;
    goto LAB12;

LAB13:    xsi_set_current_line(54, ng0);
    t6 = (t0 + 1968U);
    t8 = *((char **)t6);
    t15 = *((unsigned char *)t8);
    t6 = (t0 + 1968U);
    t16 = *((char **)t6);
    t6 = (t16 + 0);
    *((unsigned char *)t6) = t15;
    goto LAB14;

LAB16:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t10 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t9);
    t1 = (t0 + 1968U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((unsigned char *)t1) = t10;
    goto LAB14;

}


extern void work_a_0322804823_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0322804823_3212880686_p_0};
	xsi_register_didat("work_a_0322804823_3212880686", "isim/tb_counter_by_T_FF_isim_beh.exe.sim/work/a_0322804823_3212880686.didat");
	xsi_register_executes(pe);
}