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
    work_m_00000000004073975265_1069848932_init();
    work_m_00000000003196459057_1832158028_init();
    work_m_00000000001145772065_3112236191_init();
    work_m_00000000000964640230_3980182883_init();
    work_m_00000000002580479937_3417347778_init();
    work_m_00000000000171309274_0431156398_init();
    work_m_00000000001316507499_3425371643_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001316507499_3425371643");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
