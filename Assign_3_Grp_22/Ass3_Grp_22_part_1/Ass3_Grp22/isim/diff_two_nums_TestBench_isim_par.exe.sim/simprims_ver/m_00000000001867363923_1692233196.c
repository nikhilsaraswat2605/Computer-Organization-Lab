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



static void NetDecl_36_0(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5440);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 40U);
    t5 = *((char **)t4);
    t4 = (t0 + 3872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 0U);
    t18 = (t0 + 3776);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Gate_38_1(char *t0)
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

LAB0:    t1 = (t0 + 3456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1888U);
    t3 = *((char **)t2);
    t2 = (t0 + 2048U);
    t4 = *((char **)t2);
    t2 = (t0 + 3936);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_bufIf0Gate(t8, t3, t4);
    t9 = (t0 + 3936);
    xsi_driver_vfirst_trans_bufif(t9, 0, 0);
    t10 = (t0 + 3792);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void simprims_ver_m_00000000001867363923_1692233196_2105838221_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2105838221", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2105838221.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3165516133_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3165516133", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3165516133.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1846169331_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1846169331", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1846169331.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2798163297_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2798163297", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2798163297.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0819528298_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0819528298", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0819528298.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2944053649_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2944053649", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2944053649.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2235430384_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2235430384", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2235430384.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_4055156056_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_4055156056", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_4055156056.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1584523804_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1584523804", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1584523804.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1308569186_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1308569186", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1308569186.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1142197784_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1142197784", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1142197784.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2673381876_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2673381876", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2673381876.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1518615073_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1518615073", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1518615073.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2284029367_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2284029367", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2284029367.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2882987302_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2882987302", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2882987302.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1889204938_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1889204938", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1889204938.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1795137230_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1795137230", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1795137230.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2721924444_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2721924444", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2721924444.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0511094374_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0511094374", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0511094374.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2981331234_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2981331234", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2981331234.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1088511525_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1088511525", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1088511525.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_4018009579_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_4018009579", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_4018009579.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1850667561_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1850667561", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1850667561.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1085856431_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1085856431", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1085856431.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0054330372_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0054330372", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0054330372.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1399822939_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1399822939", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1399822939.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2177377741_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2177377741", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2177377741.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1225457247_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1225457247", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1225457247.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3743115604_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3743115604", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3743115604.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2938320155_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2938320155", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2938320155.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1742859913_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1742859913", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1742859913.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0012558037_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0012558037", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0012558037.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2173475095_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2173475095", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2173475095.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3041284383_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3041284383", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3041284383.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3951568342_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3951568342", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3951568342.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1469729382_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1469729382", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1469729382.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0071978728_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0071978728", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0071978728.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3092783448_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3092783448", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3092783448.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3868611985_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3868611985", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3868611985.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0156516015_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0156516015", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0156516015.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3359242653_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3359242653", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3359242653.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0228716178_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0228716178", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0228716178.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3689855337_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3689855337", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3689855337.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3798173100_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3798173100", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3798173100.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1887945370_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1887945370", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1887945370.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0670798499_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0670798499", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0670798499.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0875352663_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0875352663", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0875352663.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0450558673_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0450558673", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0450558673.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0945666444_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0945666444", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0945666444.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_4112028143_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_4112028143", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_4112028143.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0959619600_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0959619600", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0959619600.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2611823049_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2611823049", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2611823049.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3606104366_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3606104366", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3606104366.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3504894927_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3504894927", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3504894927.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1953442551_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1953442551", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1953442551.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2667648382_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2667648382", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2667648382.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0696541383_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0696541383", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0696541383.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1472450284_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1472450284", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1472450284.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3523549459_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3523549459", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3523549459.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2362856842_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2362856842", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2362856842.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1891860032_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1891860032", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1891860032.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3087115730_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3087115730", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3087115730.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1036481069_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1036481069", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1036481069.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2037471920_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2037471920", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2037471920.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1662271156_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1662271156", "isim/diff_two_nums_TestBench_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1662271156.didat");
	xsi_register_executes(pe);
}
