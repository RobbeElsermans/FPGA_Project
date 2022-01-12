proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/proj/pcam-5c.cache/wt [current_project]
  set_property parent.project_path /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/proj/pcam-5c.xpr [current_project]
  set_property ip_repo_paths /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/repo [current_project]
  set_property ip_output_repo /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/repo/cache [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/proj/pcam-5c.runs/synth_1/system_wrapper.dcp
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_AXI_BayerToRGB_1_0/system_AXI_BayerToRGB_1_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_AXI_BayerToRGB_1_0/system_AXI_BayerToRGB_1_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_AXI_GammaCorrection_0_0/system_AXI_GammaCorrection_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_AXI_GammaCorrection_0_0/system_AXI_GammaCorrection_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/system_MIPI_D_PHY_RX_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/system_MIPI_D_PHY_RX_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_xbar_0/system_xbar_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_xbar_0/system_xbar_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rgb2dvi_0_0/system_rgb2dvi_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rgb2dvi_0_0/system_rgb2dvi_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_clk_wiz_0_50M_0/system_rst_clk_wiz_0_50M_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_clk_wiz_0_50M_0/system_rst_clk_wiz_0_50M_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_vid_clk_dyn_0/system_rst_vid_clk_dyn_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_vid_clk_dyn_0/system_rst_vid_clk_dyn_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_video_dynclk_0/system_video_dynclk_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_video_dynclk_0/system_video_dynclk_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_vtg_0/system_vtg_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_vtg_0/system_vtg_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_xlconcat_0_0/system_xlconcat_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_xlconcat_0_0/system_xlconcat_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_FilterSpecial_0_0/system_FilterSpecial_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_FilterSpecial_0_0/system_FilterSpecial_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_shifter_0_0/system_shifter_0_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_shifter_0_0/system_shifter_0_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_concater_0_1/system_concater_0_1.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_concater_0_1/system_concater_0_1.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_auto_pc_0/system_auto_pc_0.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_auto_pc_0/system_auto_pc_0.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_auto_pc_1/system_auto_pc_1.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_auto_pc_1/system_auto_pc_1.dcp]
  add_files -quiet /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_auto_pc_2/system_auto_pc_2.dcp
  set_property netlist_only true [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_auto_pc_2/system_auto_pc_2.dcp]
  read_xdc -ref line_buffer -cells inst /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/line_buffer/line_buffer.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/line_buffer/line_buffer.xdc]
  read_xdc -ref ila_rxclk_lane -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref ila_rxclk -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref ila_vidclk -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref cdc_fifo -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/cdc_fifo/cdc_fifo.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/cdc_fifo/cdc_fifo.xdc]
  read_xdc -ref system_MIPI_CSI_2_RX_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/mipi_csi2_rx.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/mipi_csi2_rx.xdc]
  read_xdc -ref ila_sfen_rxclk -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref ila_scnn_refclk -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref ila_sfen_refclk -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref system_MIPI_D_PHY_RX_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/MIPI_DPHY_Receiver.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/MIPI_DPHY_Receiver.xdc]
  read_xdc -ref system_axi_vdma_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_clk_wiz_0_0 -cells inst /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc]
  read_xdc -ref system_clk_wiz_0_0 -cells inst /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc]
  read_xdc -ref system_processing_system7_0_0 -cells inst /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
  read_xdc -ref system_rgb2dvi_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_clk_wiz_0_50M_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_clk_wiz_0_50M_0/system_rst_clk_wiz_0_50M_0_board.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_clk_wiz_0_50M_0/system_rst_clk_wiz_0_50M_0_board.xdc]
  read_xdc -ref system_rst_clk_wiz_0_50M_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_clk_wiz_0_50M_0/system_rst_clk_wiz_0_50M_0.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_clk_wiz_0_50M_0/system_rst_clk_wiz_0_50M_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_vid_clk_dyn_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_vid_clk_dyn_0/system_rst_vid_clk_dyn_0_board.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_vid_clk_dyn_0/system_rst_vid_clk_dyn_0_board.xdc]
  read_xdc -ref system_rst_vid_clk_dyn_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_vid_clk_dyn_0/system_rst_vid_clk_dyn_0.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rst_vid_clk_dyn_0/system_rst_vid_clk_dyn_0.xdc]
  read_xdc -ref system_video_dynclk_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_video_dynclk_0/src/axi_dynclk.xdc
  set_property processing_order EARLY [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_video_dynclk_0/src/axi_dynclk.xdc]
  read_xdc /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/constraints/ZyboZ7_A.xdc
  read_xdc /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/constraints/timing.xdc
  read_xdc /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/constraints/auto.xdc
  read_xdc -ref cdc_fifo -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/cdc_fifo/cdc_fifo_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/cdc_fifo/cdc_fifo_clocks.xdc]
  read_xdc -ref system_MIPI_CSI_2_RX_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/mipi_csi2_rx_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/mipi_csi2_rx_clocks.xdc]
  read_xdc -ref system_MIPI_D_PHY_RX_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/MIPI_DPHY_Receiver_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/MIPI_DPHY_Receiver_clocks.xdc]
  read_xdc -ref system_axi_vdma_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_clocks.xdc]
  read_xdc -ref system_rgb2dvi_0_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi_clocks.xdc]
  read_xdc -ref system_v_axi4s_vid_out_0_0 -cells inst /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc]
  read_xdc -ref system_vtg_0 -cells U0 /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_vtg_0/system_vtg_0_clocks.xdc
  set_property processing_order LATE [get_files /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_vtg_0/system_vtg_0_clocks.xdc]
  link_design -top system_wrapper -part xc7z020clg400-1
  write_hwdef -file system_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design -directive RuntimeOptimized
  write_checkpoint -force system_wrapper_opt.dcp
  catch { report_drc -file system_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design -directive RuntimeOptimized
  write_checkpoint -force system_wrapper_placed.dcp
  catch { report_io -file system_wrapper_io_placed.rpt }
  catch { report_utilization -file system_wrapper_utilization_placed.rpt -pb system_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file system_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive Explore
  write_checkpoint -force system_wrapper_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive RuntimeOptimized
  write_checkpoint -force system_wrapper_routed.dcp
  catch { report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx }
  catch { report_methodology -file system_wrapper_methodology_drc_routed.rpt -rpx system_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -rpx system_wrapper_timing_summary_routed.rpx }
  catch { report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx }
  catch { report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb }
  catch { report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force system_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force system_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile system_wrapper.bit 
  catch { write_sysdef -hwdef system_wrapper.hwdef -bitfile system_wrapper.bit -meminfo system_wrapper.mmi -file system_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

