# Clocks

set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 7.50 -waveform {0 5} [get_ports clk]

# LED

set_property PACKAGE_PIN U16 [get_ports dout]
set_property IOSTANDARD LVCMOS33 [get_ports dout]