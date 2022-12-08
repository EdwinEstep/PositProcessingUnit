set_app_var search_path "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/ ../../src ."
set_app_var synopsys_auto_setup "true"
set_svf "ppu_syn.svf"
read_db -technology_library "saed90nm_max.db"
read_sverilog -r "ppu.sv" -work_library work
set_top r:/WORK/ppu
read_ddc -i "./output/ppu_syn.ddc"
set_top i:/WORK/ppu
match
report_unmatched_points
verify
report_status > reports/formality_report.rpt
quit
