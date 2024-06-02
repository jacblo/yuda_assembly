/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_729(char*, char *);
IKI_DLLESPEC extern void execute_1747(char*, char *);
IKI_DLLESPEC extern void execute_1748(char*, char *);
IKI_DLLESPEC extern void execute_1749(char*, char *);
IKI_DLLESPEC extern void execute_1750(char*, char *);
IKI_DLLESPEC extern void execute_1751(char*, char *);
IKI_DLLESPEC extern void execute_1752(char*, char *);
IKI_DLLESPEC extern void execute_1753(char*, char *);
IKI_DLLESPEC extern void execute_1754(char*, char *);
IKI_DLLESPEC extern void execute_1755(char*, char *);
IKI_DLLESPEC extern void execute_1756(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_735(char*, char *);
IKI_DLLESPEC extern void execute_736(char*, char *);
IKI_DLLESPEC extern void execute_737(char*, char *);
IKI_DLLESPEC extern void execute_25(char*, char *);
IKI_DLLESPEC extern void execute_27(char*, char *);
IKI_DLLESPEC extern void execute_28(char*, char *);
IKI_DLLESPEC extern void execute_798(char*, char *);
IKI_DLLESPEC extern void execute_801(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_803(char*, char *);
IKI_DLLESPEC extern void execute_804(char*, char *);
IKI_DLLESPEC extern void execute_805(char*, char *);
IKI_DLLESPEC extern void execute_808(char*, char *);
IKI_DLLESPEC extern void execute_809(char*, char *);
IKI_DLLESPEC extern void execute_810(char*, char *);
IKI_DLLESPEC extern void execute_811(char*, char *);
IKI_DLLESPEC extern void execute_807(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_89(char*, char *);
IKI_DLLESPEC extern void execute_904(char*, char *);
IKI_DLLESPEC extern void execute_905(char*, char *);
IKI_DLLESPEC extern void execute_906(char*, char *);
IKI_DLLESPEC extern void execute_907(char*, char *);
IKI_DLLESPEC extern void execute_903(char*, char *);
IKI_DLLESPEC extern void execute_161(char*, char *);
IKI_DLLESPEC extern void execute_162(char*, char *);
IKI_DLLESPEC extern void execute_452(char*, char *);
IKI_DLLESPEC extern void execute_1523(char*, char *);
IKI_DLLESPEC extern void execute_1524(char*, char *);
IKI_DLLESPEC extern void execute_1525(char*, char *);
IKI_DLLESPEC extern void execute_1526(char*, char *);
IKI_DLLESPEC extern void execute_1527(char*, char *);
IKI_DLLESPEC extern void execute_1528(char*, char *);
IKI_DLLESPEC extern void execute_1529(char*, char *);
IKI_DLLESPEC extern void execute_1530(char*, char *);
IKI_DLLESPEC extern void execute_1522(char*, char *);
IKI_DLLESPEC extern void execute_464(char*, char *);
IKI_DLLESPEC extern void execute_465(char*, char *);
IKI_DLLESPEC extern void execute_489(char*, char *);
IKI_DLLESPEC extern void execute_490(char*, char *);
IKI_DLLESPEC extern void execute_491(char*, char *);
IKI_DLLESPEC extern void execute_1539(char*, char *);
IKI_DLLESPEC extern void execute_1540(char*, char *);
IKI_DLLESPEC extern void execute_1541(char*, char *);
IKI_DLLESPEC extern void execute_1560(char*, char *);
IKI_DLLESPEC extern void execute_1562(char*, char *);
IKI_DLLESPEC extern void execute_731(char*, char *);
IKI_DLLESPEC extern void execute_732(char*, char *);
IKI_DLLESPEC extern void execute_733(char*, char *);
IKI_DLLESPEC extern void execute_734(char*, char *);
IKI_DLLESPEC extern void execute_1757(char*, char *);
IKI_DLLESPEC extern void execute_1758(char*, char *);
IKI_DLLESPEC extern void execute_1759(char*, char *);
IKI_DLLESPEC extern void execute_1760(char*, char *);
IKI_DLLESPEC extern void execute_1761(char*, char *);
IKI_DLLESPEC extern void execute_1762(char*, char *);
IKI_DLLESPEC extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1153(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1157(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1161(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1165(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1169(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1173(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1177(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1199(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1203(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1207(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1211(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1215(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1219(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1223(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1227(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1231(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1235(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1239(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1243(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1247(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1251(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1255(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1259(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1263(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1267(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1271(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1275(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1279(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1283(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1287(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1291(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1295(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1299(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1303(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1307(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1311(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1315(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1319(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1323(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1327(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1331(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1335(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1339(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1343(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1347(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1351(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1355(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1359(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1363(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[170] = {(funcp)execute_729, (funcp)execute_1747, (funcp)execute_1748, (funcp)execute_1749, (funcp)execute_1750, (funcp)execute_1751, (funcp)execute_1752, (funcp)execute_1753, (funcp)execute_1754, (funcp)execute_1755, (funcp)execute_1756, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_735, (funcp)execute_736, (funcp)execute_737, (funcp)execute_25, (funcp)execute_27, (funcp)execute_28, (funcp)execute_798, (funcp)execute_801, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_803, (funcp)execute_804, (funcp)execute_805, (funcp)execute_808, (funcp)execute_809, (funcp)execute_810, (funcp)execute_811, (funcp)execute_807, (funcp)execute_31, (funcp)execute_32, (funcp)execute_89, (funcp)execute_904, (funcp)execute_905, (funcp)execute_906, (funcp)execute_907, (funcp)execute_903, (funcp)execute_161, (funcp)execute_162, (funcp)execute_452, (funcp)execute_1523, (funcp)execute_1524, (funcp)execute_1525, (funcp)execute_1526, (funcp)execute_1527, (funcp)execute_1528, (funcp)execute_1529, (funcp)execute_1530, (funcp)execute_1522, (funcp)execute_464, (funcp)execute_465, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_1539, (funcp)execute_1540, (funcp)execute_1541, (funcp)execute_1560, (funcp)execute_1562, (funcp)execute_731, (funcp)execute_732, (funcp)execute_733, (funcp)execute_734, (funcp)execute_1757, (funcp)execute_1758, (funcp)execute_1759, (funcp)execute_1760, (funcp)execute_1761, (funcp)execute_1762, (funcp)transaction_22, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_27, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_30, (funcp)transaction_31, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_149, (funcp)transaction_1153, (funcp)transaction_1157, (funcp)transaction_1161, (funcp)transaction_1165, (funcp)transaction_1169, (funcp)transaction_1173, (funcp)transaction_1177, (funcp)transaction_1199, (funcp)transaction_1203, (funcp)transaction_1207, (funcp)transaction_1211, (funcp)transaction_1215, (funcp)transaction_1219, (funcp)transaction_1223, (funcp)transaction_1227, (funcp)transaction_1231, (funcp)transaction_1235, (funcp)transaction_1239, (funcp)transaction_1243, (funcp)transaction_1247, (funcp)transaction_1251, (funcp)transaction_1255, (funcp)transaction_1259, (funcp)transaction_1263, (funcp)transaction_1267, (funcp)transaction_1271, (funcp)transaction_1275, (funcp)transaction_1279, (funcp)transaction_1283, (funcp)transaction_1287, (funcp)transaction_1291, (funcp)transaction_1295, (funcp)transaction_1299, (funcp)transaction_1303, (funcp)transaction_1307, (funcp)transaction_1311, (funcp)transaction_1315, (funcp)transaction_1319, (funcp)transaction_1323, (funcp)transaction_1327, (funcp)transaction_1331, (funcp)transaction_1335, (funcp)transaction_1339, (funcp)transaction_1343, (funcp)transaction_1347, (funcp)transaction_1351, (funcp)transaction_1355, (funcp)transaction_1359, (funcp)transaction_1363};
const int NumRelocateId= 170;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/register_file_tb_func_synth/xsim.reloc",  (void **)funcTab, 170);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/register_file_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/register_file_tb_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/register_file_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/register_file_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/register_file_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
