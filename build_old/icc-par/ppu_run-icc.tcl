set_app_var search_path "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/ ."
set_app_var target_library "saed90nm_max.db" 
set_app_var link_library "* saed90nm_max.db" 
create_mw_lib -technology "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Technology_Kit/milkyway/saed90nm_icc_1p9m.tf" -mw_reference_library "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/process/astro/fram/saed90nm" "ppu_LIB"
open_mw_lib ppu_LIB
import_designs "../dc-syn/output/ppu_syn.ddc" -format "ddc" -top "ppu" -cel "ppu"
read_sdc ../dc-syn/output/ppu_syn.sdc
set_tlu_plus_files -max_tluplus "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Technology_Kit/starrcxt/tluplus/saed90nm_1p9m_1t_Cmax.tluplus" -min_tluplus "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Technology_Kit/starrcxt/tluplus/saed90nm_1p9m_1t_Cmin.tluplus" -tech2itf_map "/apps/designlib/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/process/astro/tech/tech2itf.map"
create_floorplan -core_utilization 0.6 -start_first_row -left_io2core "30" -bottom_io2core "30" -right_io2core "30" -top_io2core "30"
derive_pg_connection -power_net "VDD" -power_pin "VDD" -ground_net "VSS" -ground_pin "VSS" -create_ports "top"
initialize_floorplan -control_type "aspect_ratio" -core_aspect_ratio "1" -core_utilization "0.7" -row_core_ratio "1" -left_io2core "30" -bottom_io2core "30" -right_io2core "30" -top_io2core "30" -start_first_row
create_fp_placement
synthesize_fp_rail -power_budget "1000" -voltage_supply "1.2" -target_voltage_drop "250" -output_dir "./pna_output" -nets "VDD VSS" -create_virtual_rails "M1" -synthesize_power_plan -synthesize_power_pads -use_strap_ends_as_pads
commit_fp_rail
clock_opt -only_cts -no_clock_route
route_group -all_clock_nets
route_opt -initial_route_only
route_opt -skip_initial_route -effort medium -power
insert_stdcell_filler -cell_with_metal "SHFILL2" -connect_to_power "VDD" -connect_to_ground "VSS"
route_opt -incremental -size_only
route_search_repair -rerun_drc -loop "2"
change_names -rules verilog -hierarchy
write_verilog "ppu_par.sv"
write_sdc "ppu_par.sdc"
extract_rc -coupling_cap
write_parasitics -format SBPF -output "ppu_par.sbpf"
report_timing -transition_time -nets -attributes -nosplit > reports/ppu_par_timing.rpt
report_area -nosplit -hierarchy > reports/ppu_par_area.rpt
save_mw_cel