
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name sum -dir "/home/vassil/workspace/xilinx/sum/planAhead_run_2" -part xc6slx4tqg144-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "The_sum.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {The_sum.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top The_sum $srcset
add_files [list {The_sum.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx4tqg144-2
