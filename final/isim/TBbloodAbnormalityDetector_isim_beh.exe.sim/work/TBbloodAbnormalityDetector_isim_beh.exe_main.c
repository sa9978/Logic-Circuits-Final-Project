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
    work_m_00000000001860161672_0274277177_init();
    work_m_00000000001612464121_0520759566_init();
    work_m_00000000002980124959_0244261841_init();
    work_m_00000000001956280670_1718383245_init();
    work_m_00000000003938746737_0167927651_init();
    work_m_00000000001452322310_4133096117_init();
    work_m_00000000003926227663_3730465724_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003926227663_3730465724");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
