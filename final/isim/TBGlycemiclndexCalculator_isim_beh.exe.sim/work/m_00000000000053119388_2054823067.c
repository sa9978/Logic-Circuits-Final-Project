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
static const char *ng0 = "C:/Users/office/Desktop/llllllllll/final-logic-project-master/final/CountingOnes.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};



static void Cont_101_0(char *t0)
{
    char t4[8];
    char t10[8];
    char t14[8];
    char t17[8];
    char t21[8];
    char t24[8];
    char t28[8];
    char t31[8];
    char t35[8];
    char t38[8];
    char t42[8];
    char t45[8];
    char t49[8];
    char t52[8];
    char t56[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t4, 4, t3, t6, 2, t7, 32, 1);
    t8 = (t0 + 1048U);
    t9 = *((char **)t8);
    t8 = (t0 + 1008U);
    t11 = (t8 + 72U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t10, 4, t9, t12, 2, t13, 32, 1);
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 4, t4, 4, t10, 4);
    t15 = (t0 + 1048U);
    t16 = *((char **)t15);
    t15 = (t0 + 1008U);
    t18 = (t15 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t17, 4, t16, t19, 2, t20, 32, 1);
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 4, t14, 4, t17, 4);
    t22 = (t0 + 1048U);
    t23 = *((char **)t22);
    t22 = (t0 + 1008U);
    t25 = (t22 + 72U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng4)));
    xsi_vlog_generic_get_index_select_value(t24, 4, t23, t26, 2, t27, 32, 1);
    memset(t28, 0, 8);
    xsi_vlog_unsigned_add(t28, 4, t21, 4, t24, 4);
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    t29 = (t0 + 1008U);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t31, 4, t30, t33, 2, t34, 32, 1);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_add(t35, 4, t28, 4, t31, 4);
    t36 = (t0 + 1048U);
    t37 = *((char **)t36);
    t36 = (t0 + 1008U);
    t39 = (t36 + 72U);
    t40 = *((char **)t39);
    t41 = ((char*)((ng6)));
    xsi_vlog_generic_get_index_select_value(t38, 4, t37, t40, 2, t41, 32, 1);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 4, t35, 4, t38, 4);
    t43 = (t0 + 1048U);
    t44 = *((char **)t43);
    t43 = (t0 + 1008U);
    t46 = (t43 + 72U);
    t47 = *((char **)t46);
    t48 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t45, 4, t44, t47, 2, t48, 32, 1);
    memset(t49, 0, 8);
    xsi_vlog_unsigned_add(t49, 4, t42, 4, t45, 4);
    t50 = (t0 + 1048U);
    t51 = *((char **)t50);
    t50 = (t0 + 1008U);
    t53 = (t50 + 72U);
    t54 = *((char **)t53);
    t55 = ((char*)((ng8)));
    xsi_vlog_generic_get_index_select_value(t52, 4, t51, t54, 2, t55, 32, 1);
    memset(t56, 0, 8);
    xsi_vlog_unsigned_add(t56, 4, t49, 4, t52, 4);
    t57 = (t0 + 2768);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    memset(t61, 0, 8);
    t62 = 15U;
    t63 = t62;
    t64 = (t56 + 4);
    t65 = *((unsigned int *)t56);
    t62 = (t62 & t65);
    t66 = *((unsigned int *)t64);
    t63 = (t63 & t66);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t68 | t62);
    t69 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t69 | t63);
    xsi_driver_vfirst_trans(t57, 0, 3);
    t70 = (t0 + 2688);
    *((int *)t70) = 1;

LAB1:    return;
}


extern void work_m_00000000000053119388_2054823067_init()
{
	static char *pe[] = {(void *)Cont_101_0};
	xsi_register_didat("work_m_00000000000053119388_2054823067", "isim/TBGlycemiclndexCalculator_isim_beh.exe.sim/work/m_00000000000053119388_2054823067.didat");
	xsi_register_executes(pe);
}
