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
static unsigned int ng0[] = {0U, 0U};



static void Cont_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng0)));
    t3 = (t0 + 2728);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void simprims_ver_m_00000000000126354981_0818475687_3034617094_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3034617094", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3034617094.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1970162374_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1970162374", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1970162374.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3868638720_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3868638720", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3868638720.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0655909312_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0655909312", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0655909312.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0762425594_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0762425594", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0762425594.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0072000889_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0072000889", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0072000889.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1964837179_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1964837179", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1964837179.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1546001592_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1546001592", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1546001592.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2645083000_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2645083000", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2645083000.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3204057025_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3204057025", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3204057025.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3317988025_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3317988025", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3317988025.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3484265347_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3484265347", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3484265347.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0237204547_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0237204547", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0237204547.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2546012738_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2546012738", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2546012738.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1446809215_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1446809215", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1446809215.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2138363905_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2138363905", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2138363905.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1448070530_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1448070530", "isim/RippleCarryAdder_8bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1448070530.didat");
	xsi_register_executes(pe);
}
