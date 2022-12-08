lappend search_path ../../src
define_design_lib WORK -path work
set link_library [list /apps/designlib/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_max.db /apps/synopsys2017/cafe/SAED/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_min.db /apps/synopsys2017/cafe/SAED/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_typ.db]
set target_library [list /apps/designlib/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_max.db]
set_svf "ppu_syn.svf"
analyze -library WORK -format sverilog "ppu.sv"
elaborate -architecture verilog -library WORK "ppu"
link
set_max_area 0
compile -map_effort medium -area_effort medium
check_design
set_svf -off
report_timing -transition_time -nets -attributes -nosplit > reports/ppu_timing.rpt
report_area -nosplit -hierarchy > reports/ppu_area.rpt
report_power -nosplit -hier > reports/ppu_power.rpt
report_qor  > reports/ppu_qor.rpt
report_constraints > reports/ppu_constraints.rpt
report_hierarchy > reports/ppu_hierarchy.rpt
report_resources > reports/ppu_resources.rpt
report_reference > reports/ppu_reference.rpt
change_names -rules verilog -hierarchy
write -format ddc -hierarchy -output output/ppu_syn.ddc
write -f verilog -hierarchy -output output/ppu_syn.sv
write_sdc -version 1.7 -nosplit output/ppu_syn.sdc
quit

