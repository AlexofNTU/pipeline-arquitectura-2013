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

/* This file is designed for use with ISim build 0x6dd86d03 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/pipeline-arquitectura-2013/Pipeline/memoriaDeInstrucciones.v";
static unsigned int ng1[] = {2164768U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {1024, 0};
static unsigned int ng8[] = {0U, 0U};



static void Initial_31_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    t5 = (t0 + 1104);
    t6 = (t5 + 44U);
    t7 = *((char **)t6);
    t8 = (t0 + 1104);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB3;

LAB4:    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    t5 = (t0 + 1104);
    t6 = (t5 + 44U);
    t7 = *((char **)t6);
    t8 = (t0 + 1104);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(43, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    t5 = (t0 + 1104);
    t6 = (t5 + 44U);
    t7 = *((char **)t6);
    t8 = (t0 + 1104);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(44, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    t5 = (t0 + 1104);
    t6 = (t5 + 44U);
    t7 = *((char **)t6);
    t8 = (t0 + 1104);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(46, ng0);
    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng6)));
    t2 = (t0 + 1012);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB11:    t1 = (t0 + 1012);
    t2 = (t1 + 36U);
    t5 = *((char **)t2);
    t6 = ((char*)((ng7)));
    memset(t3, 0, 8);
    xsi_vlog_signed_less(t3, 32, t5, 32, t6, 32);
    t7 = (t3 + 4);
    t13 = *((unsigned int *)t7);
    t16 = (~(t13));
    t19 = *((unsigned int *)t3);
    t20 = (t19 & t16);
    t23 = (t20 != 0);
    if (t23 > 0)
        goto LAB12;

LAB13:
LAB1:    return;
LAB3:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB4;

LAB5:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB6;

LAB7:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB8;

LAB9:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB10;

LAB12:    xsi_set_current_line(47, ng0);

LAB14:    xsi_set_current_line(48, ng0);
    t8 = ((char*)((ng8)));
    t9 = (t0 + 1104);
    t10 = (t0 + 1104);
    t11 = (t10 + 44U);
    t12 = *((char **)t11);
    t15 = (t0 + 1104);
    t25 = (t15 + 40U);
    t26 = *((char **)t25);
    t27 = (t0 + 1012);
    t28 = (t27 + 36U);
    t29 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t4, t24, t12, t26, 2, 1, t29, 32, 1);
    t30 = (t4 + 4);
    t31 = *((unsigned int *)t30);
    t14 = (!(t31));
    t32 = (t24 + 4);
    t33 = *((unsigned int *)t32);
    t17 = (!(t33));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1012);
    t2 = (t1 + 36U);
    t5 = *((char **)t2);
    t6 = ((char*)((ng3)));
    memset(t3, 0, 8);
    xsi_vlog_signed_add(t3, 32, t5, 32, t6, 32);
    t7 = (t0 + 1012);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);
    goto LAB11;

LAB15:    t34 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t24);
    t21 = (t34 - t35);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t24), t22);
    goto LAB16;

}

static void Always_52_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2204);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1104);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t8 = (t0 + 1104);
    t9 = (t8 + 44U);
    t10 = *((char **)t9);
    t11 = (t0 + 1104);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    t14 = (t0 + 600U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t15, 10, 2);
    t14 = (t0 + 1196);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 32);
    goto LAB2;

}

static void Cont_57_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2256);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 2212);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000002907477297_1006922582_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_52_1,(void *)Cont_57_2};
	xsi_register_didat("work_m_00000000002907477297_1006922582", "isim/testPipeline_isim_beh.exe.sim/work/m_00000000002907477297_1006922582.didat");
	xsi_register_executes(pe);
}