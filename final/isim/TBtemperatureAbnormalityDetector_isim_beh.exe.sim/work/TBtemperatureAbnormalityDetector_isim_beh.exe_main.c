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
    work_m_00000000001484240560_3321437649_init();
    work_m_00000000004201853452_0149777368_init();
    work_m_00000000001220549841_4003545619_init();
    work_m_00000000003530786937_3054487310_init();
    work_m_00000000004264492280_2092878769_init();
    work_m_00000000002855639076_0823565296_init();
    work_m_00000000004241233339_3272509503_init();
    work_m_00000000000569645525_0855972825_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000569645525_0855972825");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
