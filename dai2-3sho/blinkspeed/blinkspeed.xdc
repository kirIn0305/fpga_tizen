# Clock Signal
set_property PACKAGE_PIN Y9 [get_ports {CLK}];  # "GCLK"
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
create_clock -period 8.000 -name sys_clk_pin \
    -waveform {0.000 4.000} -add [get_ports {CLK}]

# Reset
set_property PACKAGE_PIN P16 [get_ports {RST}];  # "BTNC"
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

# BTN
set_property IOSTANDARD LVCMOS25 [get_ports {BTN}]
set_property PACKAGE_PIN R16 [get_ports {BTN[0]}];  # "BTND"
set_property PACKAGE_PIN T18 [get_ports {BTN[1]}];  # "BTNU"

# LEDs
set_property IOSTANDARD LVCMOS33 [get_ports {LED}]
set_property PACKAGE_PIN T22 [get_ports {LED[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {LED[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {LED[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {LED[3]}];  # "LD3"

# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 
# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
