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


extern void simprims_ver_m_00000000000126354981_0818475687_1250452622_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1250452622", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1250452622.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0411896949_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0411896949", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0411896949.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2332474190_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2332474190", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2332474190.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0834017782_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0834017782", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0834017782.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4199618316_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4199618316", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4199618316.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2773094320_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2773094320", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2773094320.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3640906677_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3640906677", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3640906677.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0892373558_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0892373558", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0892373558.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1017670065_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1017670065", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1017670065.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0361987122_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0361987122", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0361987122.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4247172721_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4247172721", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4247172721.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4031481291_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4031481291", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4031481291.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2721951437_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2721951437", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2721951437.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2824110071_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2824110071", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2824110071.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1672704269_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1672704269", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1672704269.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0835017227_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0835017227", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0835017227.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1308607987_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1308607987", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1308607987.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3558712306_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3558712306", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3558712306.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3541647730_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3541647730", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3541647730.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2356222515_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2356222515", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2356222515.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1004521676_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1004521676", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1004521676.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1732682032_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1732682032", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1732682032.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0316988751_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0316988751", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0316988751.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3546940047_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3546940047", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3546940047.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4030252598_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4030252598", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4030252598.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1775935543_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1775935543", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1775935543.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2798157552_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2798157552", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2798157552.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4106114550_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4106114550", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4106114550.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2171562612_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2171562612", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2171562612.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1690620016_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1690620016", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1690620016.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0311926450_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0311926450", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0311926450.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1088533940_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1088533940", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1088533940.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3725013301_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3725013301", "isim/RippleCarryAdder_16bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3725013301.didat");
	xsi_register_executes(pe);
}
