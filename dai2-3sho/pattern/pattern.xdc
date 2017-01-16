#Clock signal
set_property PACKAGE_PIN Y9 [get_ports {CLK}];  # "GCLK"
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
create_clock -period 8.000 -name sys_clk_pin \
    -waveform {0.000 4.000} -add [get_ports {CLK}]

# Reset
set_property PACKAGE_PIN P16 [get_ports {RST}];  # "BTNC"
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

##LEDs
#set_property PACKAGE_PIN M14 [get_ports {LED[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

#set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

#set_property PACKAGE_PIN G14 [get_ports {LED[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

#set_property PACKAGE_PIN D18 [get_ports {LED[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

##Buttons
#set_property PACKAGE_PIN R18 [get_ports {BTN[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]}]

#set_property PACKAGE_PIN P16 [get_ports {BTN[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[1]}]

#set_property PACKAGE_PIN V16 [get_ports {BTN[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[2]}]

#VGAs
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R}]
set_property PACKAGE_PIN V20 [get_ports {VGA_R[0]}]
set_property PACKAGE_PIN U20 [get_ports {VGA_R[1]}]
set_property PACKAGE_PIN V19 [get_ports {VGA_R[2]}]
set_property PACKAGE_PIN V18 [get_ports {VGA_R[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G}]
set_property PACKAGE_PIN AB22 [get_ports {VGA_G[0]}]
set_property PACKAGE_PIN AA22 [get_ports {VGA_G[1]}]
set_property PACKAGE_PIN AB21 [get_ports {VGA_G[2]}]
set_property PACKAGE_PIN AA21 [get_ports {VGA_G[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B}]
set_property PACKAGE_PIN Y21 [get_ports {VGA_B[0]}]
set_property PACKAGE_PIN Y20 [get_ports {VGA_B[1]}]
set_property PACKAGE_PIN AB20 [get_ports {VGA_B[2]}]
set_property PACKAGE_PIN AB19 [get_ports {VGA_B[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VGA_HS}]
set_property PACKAGE_PIN AA19 [get_ports {VGA_HS}]

set_property IOSTANDARD LVCMOS33 [get_ports {VGA_VS}]
set_property PACKAGE_PIN Y19 [get_ports {VGA_VS}]

##Switches
#set_property PACKAGE_PIN G15 [get_ports {SW[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]

#set_property PACKAGE_PIN P15 [get_ports {SW[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]

#set_property PACKAGE_PIN W13 [get_ports {SW[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]

#set_property PACKAGE_PIN T16 [get_ports {SW[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]
