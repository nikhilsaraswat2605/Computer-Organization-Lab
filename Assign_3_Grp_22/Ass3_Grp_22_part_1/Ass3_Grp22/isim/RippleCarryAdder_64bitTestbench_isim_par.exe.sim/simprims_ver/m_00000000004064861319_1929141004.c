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
static int ng0[] = {1095521093, 0, 70, 0};
static int ng1[] = {1414681925, 0, 0, 0};
static const char *ng2 = "Attribute Syntax Error : The attribute IBUF_LOW_PWR on X_IBUF_INTERMDISABLE_TPWRGT instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.";
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {1U, 1U};



static void Initial_38_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;

LAB0:
LAB2:    t1 = (t0 + 472);
    t2 = *((char **)t1);

LAB3:    t1 = ((char*)((ng0)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 32, t1, 40);
    if (t3 == 1)
        goto LAB4;

LAB5:    t4 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t2, 32, t4, 40);
    if (t5 == 1)
        goto LAB6;

LAB7:
LAB9:
LAB8:
LAB11:    t6 = (t0 + 472);
    t7 = *((char **)t6);
    xsi_vlogfile_write(1, 0, 0, ng2, 2, t0, (char)118, t7, 32);
    xsi_vlog_finish(1);

LAB10:
LAB1:    return;
LAB4:    goto LAB10;

LAB6:    goto LAB4;

}

static void Cont_55_1(char *t0)
{
    char t3[8];
    char t21[8];
    char t36[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2232U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    memset(t21, 0, 8);
    t22 = (t3 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t3);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t22) != 0)
        goto LAB12;

LAB13:    t29 = (t21 + 4);
    t30 = *((unsigned int *)t21);
    t31 = (!(t30));
    t32 = *((unsigned int *)t29);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    memcpy(t43, t21, 8);

LAB16:    t71 = (t0 + 4464);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    memset(t75, 0, 8);
    t76 = 1U;
    t77 = t76;
    t78 = (t43 + 4);
    t79 = *((unsigned int *)t43);
    t76 = (t76 & t79);
    t80 = *((unsigned int *)t78);
    t77 = (t77 & t80);
    t81 = (t75 + 4);
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t82 | t76);
    t83 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t83 | t77);
    xsi_driver_vfirst_trans(t71, 0, 0);
    t84 = (t0 + 4368);
    *((int *)t84) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

LAB10:    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB12:    t28 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 1912U);
    t35 = *((char **)t34);
    memset(t36, 0, 8);
    t34 = (t35 + 4);
    t37 = *((unsigned int *)t34);
    t38 = (~(t37));
    t39 = *((unsigned int *)t35);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t34) != 0)
        goto LAB19;

LAB20:    t44 = *((unsigned int *)t21);
    t45 = *((unsigned int *)t36);
    t46 = (t44 | t45);
    *((unsigned int *)t43) = t46;
    t47 = (t21 + 4);
    t48 = (t36 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB16;

LAB17:    *((unsigned int *)t36) = 1;
    goto LAB20;

LAB19:    t42 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB20;

LAB21:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t21 + 4);
    t58 = (t36 + 4);
    t59 = *((unsigned int *)t57);
    t60 = (~(t59));
    t61 = *((unsigned int *)t21);
    t62 = (t61 & t60);
    t63 = *((unsigned int *)t58);
    t64 = (~(t63));
    t65 = *((unsigned int *)t36);
    t66 = (t65 & t64);
    t67 = (~(t62));
    t68 = (~(t66));
    t69 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t69 & t67);
    t70 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t70 & t68);
    goto LAB23;

}

static void Cont_56_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t39[8];
    char t40[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;

LAB0:    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2392U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t75 = (t0 + 4528);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memset(t79, 0, 8);
    t80 = 1U;
    t81 = t80;
    t82 = (t3 + 4);
    t83 = *((unsigned int *)t3);
    t80 = (t80 & t83);
    t84 = *((unsigned int *)t82);
    t81 = (t81 & t84);
    t85 = (t79 + 4);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t86 | t80);
    t87 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t87 | t81);
    xsi_driver_vfirst_trans(t75, 0, 0);
    t88 = (t0 + 4384);
    *((int *)t88) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 1752U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 2392U);
    t41 = *((char **)t33);
    t33 = ((char*)((ng4)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t33 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t33);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t40, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t40 + 4);
    t66 = *((unsigned int *)t40);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t70 = *((unsigned int *)t40);
    t71 = (~(t70));
    t72 = *((unsigned int *)t65);
    t73 = (t71 || t72);
    if (t73 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t40) > 0)
        goto LAB35;

LAB36:    memcpy(t39, t74, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t34, 1, t39, 1);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t40) = 1;
    goto LAB28;

LAB27:    t64 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t69 = ((char*)((ng5)));
    goto LAB30;

LAB31:    t74 = ((char*)((ng6)));
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t39, 1, t69, 1, t74, 1);
    goto LAB37;

LAB35:    memcpy(t39, t69, 8);
    goto LAB37;

}


extern void simprims_ver_m_00000000004064861319_1929141004_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1929141004", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1929141004.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1792530920_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1792530920", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1792530920.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4071906598_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4071906598", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4071906598.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2040536113_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2040536113", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2040536113.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0971542147_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0971542147", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0971542147.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1057381118_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1057381118", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1057381118.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4238806174_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4238806174", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4238806174.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3551122618_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3551122618", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3551122618.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1754359729_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1754359729", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1754359729.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2561883005_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2561883005", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2561883005.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2344943268_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2344943268", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2344943268.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2361617456_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2361617456", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2361617456.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2599781668_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2599781668", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2599781668.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2157347793_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2157347793", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2157347793.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4192737819_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4192737819", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4192737819.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2285906634_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2285906634", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2285906634.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1843294516_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1843294516", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1843294516.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2078712424_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2078712424", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2078712424.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3522128611_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3522128611", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3522128611.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2604134163_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2604134163", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2604134163.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2391134825_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2391134825", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2391134825.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2315687059_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2315687059", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2315687059.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1271550068_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1271550068", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1271550068.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0863413129_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0863413129", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0863413129.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2169825766_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2169825766", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2169825766.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3492610260_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3492610260", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3492610260.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2286817410_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2286817410", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2286817410.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0537877528_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0537877528", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0537877528.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2170213294_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2170213294", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2170213294.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2452428407_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2452428407", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2452428407.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0977882235_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0977882235", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0977882235.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4280539376_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4280539376", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4280539376.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3644324272_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3644324272", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3644324272.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1796584415_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1796584415", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1796584415.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1933455675_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1933455675", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1933455675.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0575267393_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0575267393", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0575267393.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2574340426_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2574340426", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2574340426.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0909751564_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0909751564", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0909751564.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4084610833_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4084610833", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4084610833.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2157492633_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2157492633", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2157492633.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2365654535_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2365654535", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2365654535.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1767050630_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1767050630", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1767050630.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2019718662_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2019718662", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2019718662.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3530276493_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3530276493", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3530276493.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2345321708_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2345321708", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2345321708.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2049230943_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2049230943", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2049230943.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1096056190_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1096056190", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1096056190.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4163530796_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4163530796", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4163530796.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1851434330_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1851434330", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1851434330.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2137775834_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2137775834", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2137775834.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4201434741_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4201434741", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4201434741.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3579975249_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3579975249", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3579975249.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1242053187_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1242053187", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1242053187.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0329859106_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0329859106", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0329859106.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0825236944_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0825236944", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0825236944.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2315824859_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2315824859", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2315824859.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1813781251_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1813781251", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1813781251.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3605447231_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3605447231", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3605447231.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0423062824_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0423062824", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0423062824.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2125051117_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2125051117", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2125051117.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1083578185_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1083578185", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1083578185.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3567287398_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3567287398", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3567287398.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0309013013_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0309013013", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0309013013.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1120971024_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1120971024", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1120971024.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0821196775_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0821196775", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0821196775.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2307685045_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2307685045", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2307685045.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1872285549_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1872285549", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1872285549.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2096040628_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2096040628", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2096040628.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4276204231_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4276204231", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4276204231.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2870290247_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2870290247", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2870290247.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3609503752_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3609503752", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3609503752.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4205998609_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4205998609", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4205998609.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0900946730_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0900946730", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0900946730.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2403959318_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2403959318", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2403959318.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0971420875_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0971420875", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0971420875.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0938861939_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0938861939", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0938861939.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2391533601_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2391533601", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2391533601.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2481945664_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2481945664", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2481945664.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2307014909_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2307014909", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2307014909.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0879833373_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0879833373", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0879833373.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2366585935_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2366585935", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2366585935.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2362267256_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2362267256", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2362267256.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0612507818_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0612507818", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0612507818.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0826156952_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0826156952", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0826156952.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0507430388_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0507430388", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0507430388.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4251281065_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4251281065", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4251281065.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2689163386_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2689163386", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2689163386.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0880741205_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0880741205", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0880741205.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0447985990_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0447985990", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0447985990.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1171849676_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1171849676", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1171849676.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2100125827_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2100125827", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2100125827.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2866236784_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2866236784", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2866236784.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1180554658_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1180554658", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1180554658.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2710243917_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2710243917", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2710243917.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1125303079_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1125303079", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1125303079.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0939253563_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0939253563", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0939253563.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0460444529_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0460444529", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0460444529.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1201651605_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1201651605", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1201651605.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0418711327_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0418711327", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0418711327.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0536653763_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0536653763", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0536653763.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0477658029_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0477658029", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0477658029.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0498733466_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0498733466", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0498733466.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1142647803_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1142647803", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1142647803.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0942335156_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0942335156", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0942335156.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0726866725_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0726866725", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0726866725.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0282592502_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0282592502", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0282592502.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0850708926_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0850708926", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0850708926.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2980489118_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2980489118", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2980489118.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0909610820_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0909610820", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0909610820.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0941940476_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0941940476", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0941940476.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0286944961_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0286944961", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0286944961.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0654767300_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0654767300", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0654767300.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0863541697_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0863541697", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0863541697.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0624970397_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0624970397", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0624970397.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1636540117_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1636540117", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1636540117.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0567096879_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0567096879", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0567096879.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0312392367_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0312392367", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0312392367.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0714174738_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0714174738", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0714174738.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0596346998_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0596346998", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0596346998.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_1615459554_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_1615459554", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_1615459554.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0851112950_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0851112950", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0851112950.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_2679804833_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_2679804833", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_2679804833.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0821841327_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0821841327", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0821841327.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_4222526530_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_4222526530", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_4222526530.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_3639972743_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_3639972743", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_3639972743.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0998975052_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0998975052", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0998975052.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0650419955_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0650419955", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0650419955.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0901603682_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0901603682", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0901603682.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000004064861319_0324849816_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_55_1,(void *)Cont_56_2};
	xsi_register_didat("simprims_ver_m_00000000004064861319_0324849816", "isim/RippleCarryAdder_64bitTestbench_isim_par.exe.sim/simprims_ver/m_00000000004064861319_0324849816.didat");
	xsi_register_executes(pe);
}
