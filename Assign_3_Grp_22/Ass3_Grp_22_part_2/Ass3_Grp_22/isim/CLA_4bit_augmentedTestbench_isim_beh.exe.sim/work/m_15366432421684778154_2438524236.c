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
static const char *ng0 = "in1 = %d, in2 = %d, c_in = %d, p = %d, g = %d, sum = %d";
static const char *ng1 = "/home/nikhil/Nikhil/Ass3_Grp_22/CLA_4bit_augmentedTestbench.v";
static unsigned int ng2[] = {4U, 0U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {12U, 0U};
static unsigned int ng5[] = {8U, 0U};
static unsigned int ng6[] = {7U, 0U};
static int ng7[] = {1, 0};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {0U, 0U};

void Monitor_34_1(char *);
void Monitor_34_1(char *);


static void Monitor_34_1_Func(char *t0)
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
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 1928);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1768);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    t10 = (t0 + 1208U);
    t12 = *((char **)t10);
    t10 = (t0 + 1368U);
    t13 = *((char **)t10);
    xsi_vlogfile_write(1, 0, 3, ng0, 7, t0, (char)118, t3, 4, (char)118, t6, 4, (char)118, t9, 1, (char)118, t11, 1, (char)118, t12, 1, (char)118, t13, 4);

LAB1:    return;
}

static void Initial_33_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng1);

LAB4:    xsi_set_current_line(34, ng1);
    Monitor_34_1(t0);
    xsi_set_current_line(36, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(36, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(36, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(37, ng1);
    t2 = (t0 + 2808);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(38, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(38, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(38, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng1);
    t2 = (t0 + 2808);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(40, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(40, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(40, ng1);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(41, ng1);
    t2 = (t0 + 2808);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(42, ng1);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(42, ng1);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(42, ng1);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng1);
    t2 = (t0 + 2808);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}

void Monitor_34_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3056);
    t2 = (t0 + 3568);
    xsi_vlogfile_monitor((void *)Monitor_34_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_15366432421684778154_2438524236_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Monitor_34_1};
	xsi_register_didat("work_m_15366432421684778154_2438524236", "isim/CLA_4bit_augmentedTestbench_isim_beh.exe.sim/work/m_15366432421684778154_2438524236.didat");
	xsi_register_executes(pe);
}
