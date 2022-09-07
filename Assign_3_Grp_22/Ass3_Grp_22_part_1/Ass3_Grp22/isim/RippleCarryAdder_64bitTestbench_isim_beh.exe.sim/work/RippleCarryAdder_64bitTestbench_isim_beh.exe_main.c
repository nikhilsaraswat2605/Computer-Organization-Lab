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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002441679160_2140897300_init();
    work_m_00000000001215804557_3996337969_init();
    work_m_00000000001728716528_2683659863_init();
    work_m_00000000002087138278_0566644781_init();
    work_m_00000000002087138278_3563361306_init();
    work_m_00000000002087138278_0971982006_init();
    work_m_00000000002009659975_1670411326_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002009659975_1670411326");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
