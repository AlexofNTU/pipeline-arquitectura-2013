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
    work_m_00000000003530326665_2672722721_init();
    work_m_00000000003382676610_1547046708_init();
    xilinxcorelib_ver_m_00000000001358910285_4191231644_init();
    xilinxcorelib_ver_m_00000000001687936702_4071557896_init();
    xilinxcorelib_ver_m_00000000000277421008_0952379044_init();
    xilinxcorelib_ver_m_00000000002171091130_1596362614_init();
    work_m_00000000002489990758_0317860448_init();
    work_m_00000000001429123936_0669606494_init();
    work_m_00000000003473381104_0345418465_init();
    work_m_00000000000433755411_0802495369_init();
    work_m_00000000003041073295_1013656502_init();
    work_m_00000000001446708818_2058220583_init();
    work_m_00000000000436829437_0103510313_init();
    work_m_00000000001819849629_1944432608_init();
    work_m_00000000003718668174_4093039797_init();
    work_m_00000000002923331533_3359678066_init();
    work_m_00000000004171548366_0886308060_init();
    work_m_00000000003321129445_0652108486_init();
    work_m_00000000000196627136_4024466370_init();
    work_m_00000000001173993285_3685833879_init();
    xilinxcorelib_ver_m_00000000000277421008_1166914489_init();
    xilinxcorelib_ver_m_00000000002171091130_2075407939_init();
    work_m_00000000000403262735_2356217838_init();
    work_m_00000000004269439511_2520395732_init();
    work_m_00000000003917997374_2073452174_init();
    work_m_00000000002157710487_3409648901_init();
    work_m_00000000000157090981_1381762516_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000000157090981_1381762516");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}