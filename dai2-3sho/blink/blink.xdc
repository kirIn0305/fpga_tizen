# Clock Signal
set_property PACKAGE_PIN Y9 [get_ports {CLK}];  # "GCLK"
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
create_clock -period 8.000 -name sys_clk_pin \
    -waveform {0.000 4.000} -add [get_ports {CLK}]

# Reset
set_property PACKAGE_PIN P16 [get_ports {RST}];  # "BTNC"
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

# LEDs
set_property PACKAGE_PIN T22 [get_ports {LD0}];  # "LD0"
set_property IOSTANDARD LVCMOS33 [get_ports {LD0}]
set_property PACKAGE_PIN T21 [get_ports {LD1}];  # "LD1"
set_property IOSTANDARD LVCMOS33 [get_ports {LD1}]
set_property PACKAGE_PIN U22 [get_ports {LD2}];  # "LD2"
set_property IOSTANDARD LVCMOS33 [get_ports {LD2}]
set_property PACKAGE_PIN U21 [get_ports {LD3}];  # "LD3"
set_property IOSTANDARD LVCMOS33 [get_ports {LD3}]

