# Set project name to be used in various places
set project_name "sds1104xe"



# Set some dirs
set origin_dir "."
set project_dir "$origin_dir/projects/$project_name"



# Create project
create_project $project_name "./build/$project_name" -force



# Set project properties
set obj [get_projects $project_name]
set_property "default_lib" "xil_defaultlib" $obj
set_property "part" "xc7z020clg484-1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "source_mgmt_mode" "DisplayOnly" $obj



# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
create_fileset -srcset sources_1
}

# Set IP repository paths
set sources_fileset [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/ip_repo"]" $sources_fileset

# Add sources
set files [list \
"[file normalize "$project_dir/sds1104xe_top.sv"]"\
]
add_files -norecurse -fileset $sources_fileset $files

# Set top file
set_property "top" "$project_name" $sources_fileset



# Create block design
source "$project_dir/sds1104xe_top.tcl"



# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
create_fileset -constrset constrs_1
}
set constrs_fileset [get_filesets constrs_1]

# Add files
set files [list \
"[file normalize "$project_dir/sds1104xe_top.xdc"]" \
"[file normalize "$project_dir/sds1104xe_clocks.xdc"]" \
]
add_files -norecurse -fileset $constrs_fileset $files

# Set filetype to XDC for constraint files
set file_obj [get_files -of_objects $constrs_fileset "*.xdc"]
set_property "file_type" "XDC" $file_obj

# Set main constraints file
set_property "target_constrs_file" "$project_dir/sds1104xe_top.xdc" $constrs_fileset



# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
create_run -name synth_1 -part xc7z020clg484-1 -flow {Vivado Synthesis 2017} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
set_property flow "Vivado Synthesis 2017" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "needs_refresh" "1" $obj
set_property "part" "xc7z020clg484-1" $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]



# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
create_run -name impl_1 -part xc7z020clg484-1 -flow {Vivado Implementation 2017} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
set_property flow "Vivado Implementation 2017" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "needs_refresh" "1" $obj
set_property "part" "xc7z020clg484-1" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]
