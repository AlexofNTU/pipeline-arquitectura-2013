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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mariano/Desktop/pipeline-arquitectura-2013/Pipeline/ShiftSalto.v";
static int ng1[] = {2, 0};
static int ng2[] = {27, 0};
static int ng3[] = {0, 0};
static int ng4[] = {31, 0};
static int ng5[] = {28, 0};



static void Always_27_0(char *t0)
{
    char t6[8];
    char t8[8];
    char t9[8];
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    int t18;
    char *t19;
    unsigned int t20;
    int t21;
    int t22;
    char *t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 28, t5, 26, t4, 32);
    t7 = (t0 + 1608);
    t11 = (t0 + 1608);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng2)));
    t15 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t8, t9, t10, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t9 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    t23 = (t10 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    t26 = (t22 && t25);
    if (t26 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1608);
    t4 = (t0 + 1608);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t11 = ((char*)((ng4)));
    t12 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t8, t9, ((int*)(t7)), 2, t11, 32, 1, t12, 32, 1);
    t13 = (t6 + 4);
    t17 = *((unsigned int *)t13);
    t18 = (!(t17));
    t14 = (t8 + 4);
    t20 = *((unsigned int *)t14);
    t21 = (!(t20));
    t22 = (t18 && t21);
    t15 = (t9 + 4);
    t24 = *((unsigned int *)t15);
    t25 = (!(t24));
    t26 = (t22 && t25);
    if (t26 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t27 = *((unsigned int *)t10);
    t28 = (t27 + 0);
    t29 = *((unsigned int *)t8);
    t30 = *((unsigned int *)t9);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t7, t6, t28, *((unsigned int *)t9), t32);
    goto LAB7;

LAB8:    t27 = *((unsigned int *)t9);
    t28 = (t27 + 0);
    t29 = *((unsigned int *)t6);
    t30 = *((unsigned int *)t8);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t2, t3, t28, *((unsigned int *)t8), t32);
    goto LAB9;

}


extern void work_m_00000000001646920858_1047647396_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000001646920858_1047647396", "isim/testPipeline_isim_beh.exe.sim/work/m_00000000001646920858_1047647396.didat");
	xsi_register_executes(pe);
}
