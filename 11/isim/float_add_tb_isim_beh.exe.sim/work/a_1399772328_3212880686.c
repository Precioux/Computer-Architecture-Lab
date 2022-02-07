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
static const char *ng0 = "D:/Test_Ise/Az11/float_add.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_1399772328_3212880686_p_0(char *t0)
{
    char t11[16];
    char t16[16];
    char t24[16];
    char t29[16];
    char t30[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    int t21;
    int t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1648U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1768U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5572U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t4 == 0);
    if (t5 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t1 = (t0 + 5636U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t4 == 0);
    if (t5 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t8 = (31 - 30);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t11 + 0U);
    t6 = (t3 + 0U);
    *((int *)t6) = 30;
    t6 = (t3 + 4U);
    *((int *)t6) = 23;
    t6 = (t3 + 8U);
    *((int *)t6) = -1;
    t4 = (23 - 30);
    t12 = (t4 * -1);
    t12 = (t12 + 1);
    t6 = (t3 + 12U);
    *((unsigned int *)t6) = t12;
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t1, t11);
    t6 = (t0 + 1768U);
    t7 = *((char **)t6);
    t12 = (31 - 30);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t6 = (t7 + t15);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 30;
    t18 = (t17 + 4U);
    *((int *)t18) = 23;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (23 - 30);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t16);
    t22 = (t13 - t21);
    t18 = (t0 + 2128U);
    t23 = *((char **)t18);
    t18 = (t23 + 0);
    *((int *)t18) = t22;
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t4 = *((int *)t2);
    t5 = (t4 >= 0);
    if (t5 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = (31 - 30);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 1888U);
    t6 = *((char **)t3);
    t12 = (31 - 30);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t3 = (t6 + t15);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t8 = (31 - 22);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t24 + 0U);
    t6 = (t3 + 0U);
    *((int *)t6) = 22;
    t6 = (t3 + 4U);
    *((int *)t6) = 0;
    t6 = (t3 + 8U);
    *((int *)t6) = -1;
    t4 = (0 - 22);
    t12 = (t4 * -1);
    t12 = (t12 + 1);
    t6 = (t3 + 12U);
    *((unsigned int *)t6) = t12;
    t6 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t16, t1, t24, (unsigned char)0);
    t7 = (t16 + 12U);
    t12 = *((unsigned int *)t7);
    t12 = (t12 * 1U);
    t17 = (t0 + 2128U);
    t18 = *((char **)t17);
    t13 = *((int *)t18);
    t19 = (1 * t13);
    t21 = (-(t19));
    t17 = xsi_vhdl_bitvec_srl(t17, t6, t12, t21);
    t23 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t11, t17, t16);
    t25 = (t0 + 1648U);
    t26 = *((char **)t25);
    t14 = (31 - 22);
    t15 = (t14 * 1U);
    t20 = (0 + t15);
    t25 = (t26 + t20);
    t27 = (t11 + 12U);
    t28 = *((unsigned int *)t27);
    t28 = (t28 * 1U);
    memcpy(t25, t23, t28);

LAB8:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t4 = (31 - 31);
    t8 = (t4 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t8 = (31 - 22);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t24 + 0U);
    t17 = (t7 + 0U);
    *((int *)t17) = 22;
    t17 = (t7 + 4U);
    *((int *)t17) = 0;
    t17 = (t7 + 8U);
    *((int *)t17) = -1;
    t4 = (0 - 22);
    t12 = (t4 * -1);
    t12 = (t12 + 1);
    t17 = (t7 + 12U);
    *((unsigned int *)t17) = t12;
    t3 = xsi_base_array_concat(t3, t16, t6, (char)99, (unsigned char)3, (char)97, t1, t24, (char)101);
    t17 = (t0 + 1768U);
    t18 = *((char **)t17);
    t12 = (31 - 22);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t17 = (t18 + t15);
    t25 = ((IEEE_P_2592010699) + 4024);
    t26 = (t30 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 22;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = -1;
    t13 = (0 - 22);
    t20 = (t13 * -1);
    t20 = (t20 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t20;
    t23 = xsi_base_array_concat(t23, t29, t25, (char)99, (unsigned char)3, (char)97, t17, t30, (char)101);
    t27 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t3, t16, t23, t29);
    t31 = (t0 + 2008U);
    t32 = *((char **)t31);
    t31 = (t32 + 0);
    t33 = (t11 + 12U);
    t20 = *((unsigned int *)t33);
    t28 = (1U * t20);
    memcpy(t31, t27, t28);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t4 = (23 - 23);
    t8 = (t4 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t5 = *((unsigned char *)t1);
    t34 = (t5 == (unsigned char)3);
    if (t34 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t8 = (23 - 22);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 1888U);
    t6 = *((char **)t3);
    t12 = (31 - 22);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t3 = (t6 + t15);
    memcpy(t3, t1, 23U);
    xsi_set_current_line(64, ng0);

LAB13:    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t4 = (22 - 31);
    t8 = (t4 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t5 = *((unsigned char *)t1);
    t34 = (t5 == (unsigned char)3);
    if (t34 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t1 = (t0 + 3752);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t17 = *((char **)t7);
    memcpy(t17, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1768U);
    t6 = *((char **)t3);
    t3 = (t0 + 1888U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    memcpy(t3, t6, 32U);
    goto LAB3;

LAB5:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1648U);
    t6 = *((char **)t3);
    t3 = (t0 + 1888U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    memcpy(t3, t6, 32U);
    goto LAB3;

LAB7:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1648U);
    t3 = *((char **)t1);
    t8 = (31 - 30);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t3 + t10);
    t6 = (t0 + 1888U);
    t7 = *((char **)t6);
    t12 = (31 - 30);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t6 = (t7 + t15);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = (31 - 22);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t24 + 0U);
    t6 = (t3 + 0U);
    *((int *)t6) = 22;
    t6 = (t3 + 4U);
    *((int *)t6) = 0;
    t6 = (t3 + 8U);
    *((int *)t6) = -1;
    t4 = (0 - 22);
    t12 = (t4 * -1);
    t12 = (t12 + 1);
    t6 = (t3 + 12U);
    *((unsigned int *)t6) = t12;
    t6 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t16, t1, t24, (unsigned char)0);
    t7 = (t16 + 12U);
    t12 = *((unsigned int *)t7);
    t12 = (t12 * 1U);
    t17 = (t0 + 2128U);
    t18 = *((char **)t17);
    t13 = *((int *)t18);
    t17 = xsi_vhdl_bitvec_srl(t17, t6, t12, t13);
    t23 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t11, t17, t16);
    t25 = (t0 + 1768U);
    t26 = *((char **)t25);
    t14 = (31 - 22);
    t15 = (t14 * 1U);
    t20 = (0 + t15);
    t25 = (t26 + t20);
    t27 = (t11 + 12U);
    t28 = *((unsigned int *)t27);
    t28 = (t28 * 1U);
    memcpy(t25, t23, t28);
    goto LAB8;

LAB10:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 2008U);
    t6 = *((char **)t3);
    t3 = (t0 + 5668U);
    t7 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t16, t6, t3, (unsigned char)0);
    t17 = (t16 + 12U);
    t12 = *((unsigned int *)t17);
    t12 = (t12 * 1U);
    t18 = xsi_vhdl_bitvec_sll(t18, t7, t12, 1);
    t23 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t11, t18, t16);
    t25 = (t0 + 2008U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    t27 = (t11 + 12U);
    t14 = *((unsigned int *)t27);
    t14 = (t14 * 1U);
    memcpy(t25, t23, t14);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t8 = (31 - 30);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t16 + 0U);
    t6 = (t3 + 0U);
    *((int *)t6) = 30;
    t6 = (t3 + 4U);
    *((int *)t6) = 23;
    t6 = (t3 + 8U);
    *((int *)t6) = -1;
    t4 = (23 - 30);
    t12 = (t4 * -1);
    t12 = (t12 + 1);
    t6 = (t3 + 12U);
    *((unsigned int *)t6) = t12;
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t1, t16, 1);
    t7 = (t0 + 1888U);
    t17 = *((char **)t7);
    t12 = (31 - 30);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t7 = (t17 + t15);
    t18 = (t11 + 12U);
    t20 = *((unsigned int *)t18);
    t28 = (1U * t20);
    memcpy(t7, t6, t28);
    goto LAB11;

LAB14:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1888U);
    t6 = *((char **)t3);
    t12 = (31 - 22);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t3 = (t6 + t15);
    t7 = (t24 + 0U);
    t17 = (t7 + 0U);
    *((int *)t17) = 22;
    t17 = (t7 + 4U);
    *((int *)t17) = 0;
    t17 = (t7 + 8U);
    *((int *)t17) = -1;
    t13 = (0 - 22);
    t20 = (t13 * -1);
    t20 = (t20 + 1);
    t17 = (t7 + 12U);
    *((unsigned int *)t17) = t20;
    t17 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t16, t3, t24, (unsigned char)0);
    t18 = (t16 + 12U);
    t20 = *((unsigned int *)t18);
    t20 = (t20 * 1U);
    t23 = xsi_vhdl_bitvec_sll(t23, t17, t20, 1);
    t25 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t11, t23, t16);
    t26 = (t0 + 1888U);
    t27 = *((char **)t26);
    t28 = (31 - 22);
    t35 = (t28 * 1U);
    t36 = (0 + t35);
    t26 = (t27 + t36);
    t31 = (t11 + 12U);
    t37 = *((unsigned int *)t31);
    t37 = (t37 * 1U);
    memcpy(t26, t25, t37);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t8 = (31 - 30);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t16 + 0U);
    t6 = (t3 + 0U);
    *((int *)t6) = 30;
    t6 = (t3 + 4U);
    *((int *)t6) = 23;
    t6 = (t3 + 8U);
    *((int *)t6) = -1;
    t4 = (23 - 30);
    t12 = (t4 * -1);
    t12 = (t12 + 1);
    t6 = (t3 + 12U);
    *((unsigned int *)t6) = t12;
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t1, t16, 1);
    t7 = (t0 + 1888U);
    t17 = *((char **)t7);
    t12 = (31 - 30);
    t14 = (t12 * 1U);
    t15 = (0 + t14);
    t7 = (t17 + t15);
    t18 = (t11 + 12U);
    t20 = *((unsigned int *)t18);
    t28 = (1U * t20);
    memcpy(t7, t6, t28);
    goto LAB13;

LAB15:;
}


extern void work_a_1399772328_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1399772328_3212880686_p_0};
	xsi_register_didat("work_a_1399772328_3212880686", "isim/float_add_tb_isim_beh.exe.sim/work/a_1399772328_3212880686.didat");
	xsi_register_executes(pe);
}
