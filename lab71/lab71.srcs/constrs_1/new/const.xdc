# Clocks

set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# Button

set_property PACKAGE_PIN U17 [get_ports srst]
set_property IOSTANDARD LVCMOS33 [get_ports srst]

# LEDs

set_property PACKAGE_PIN U16 [get_ports {dout[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[0]}]
set_property PACKAGE_PIN E19 [get_ports {dout[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[1]}]
set_property PACKAGE_PIN U19 [get_ports {dout[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[2]}]
set_property PACKAGE_PIN V19 [get_ports {dout[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[3]}]
set_property PACKAGE_PIN W18 [get_ports {dout[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[4]}]
set_property PACKAGE_PIN U15 [get_ports {dout[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[5]}]
set_property PACKAGE_PIN U14 [get_ports {dout[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[6]}]
set_property PACKAGE_PIN V14 [get_ports {dout[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[7]}]