## Clock Signal
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33}           [get_ports {clk100MHz}];          
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk100MHz}];

## Buttons
#set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {BTNC}]; # Center Button
#set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {BTNU}]; # Upper Button
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {rst}]; # Left Button
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {clkb}]; # Right Button
#set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {BTND}]; # Down Button

## Switches
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {a[0]}];  # Switch 0
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {a[1]}];  # Switch 1
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {a[2]}];  # Switch 2
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {a[3]}];  # Switch 3
#set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {SW[4]}];  # Switch 4
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {b[0]}];  # Switch 5
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {b[1]}];  # Switch 6
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {b[2]}];  # Switch 7
set_property -dict {PACKAGE_PIN V2  IOSTANDARD LVCMOS33} [get_ports {b[3]}];  # Switch 8
#set_property -dict {PACKAGE_PIN T3  IOSTANDARD LVCMOS33} [get_ports {SW[9]}];  # Switch 9
#set_property -dict {PACKAGE_PIN T2  IOSTANDARD LVCMOS33} [get_ports {SW[10]}]; # Switch 10
#set_property -dict {PACKAGE_PIN R3  IOSTANDARD LVCMOS33} [get_ports {SW[11]}]; # Switch 11
#set_property -dict {PACKAGE_PIN W2  IOSTANDARD LVCMOS33} [get_ports {SW[12]}]; # Switch 12
#set_property -dict {PACKAGE_PIN U1  IOSTANDARD LVCMOS33} [get_ports {SW[13]}]; # Switch 13
#set_property -dict {PACKAGE_PIN T1  IOSTANDARD LVCMOS33} [get_ports {SW[14]}]; # Switch 14
#set_property -dict {PACKAGE_PIN R2  IOSTANDARD LVCMOS33} [get_ports {SW[15]}]; # Switch 15

## LEDs
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {out[0]}];  # LED 0
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {out[1]}];  # LED 1
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {out[2]}];  # LED 2
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {out[3]}];  # LED 3
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {out[4]}];  # LED 4
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {out[5]}];  # LED 5
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {out[6]}];  # LED 6
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {out[7]}];  # LED 7
#set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {LED[8]}];  # LED 8
#set_property -dict {PACKAGE_PIN V3  IOSTANDARD LVCMOS33} [get_ports {LED[9]}];  # LED 9
#set_property -dict {PACKAGE_PIN W3  IOSTANDARD LVCMOS33} [get_ports {LED[10]}]; # LED 10
#set_property -dict {PACKAGE_PIN U3  IOSTANDARD LVCMOS33} [get_ports {LED[11]}]; # LED 11
#set_property -dict {PACKAGE_PIN P3  IOSTANDARD LVCMOS33} [get_ports {LED[12]}]; # LED 12
#set_property -dict {PACKAGE_PIN N3  IOSTANDARD LVCMOS33} [get_ports {LED[13]}]; # LED 13
#set_property -dict {PACKAGE_PIN P1  IOSTANDARD LVCMOS33} [get_ports {LED[14]}]; # LED 14
#set_property -dict {PACKAGE_PIN L1  IOSTANDARD LVCMOS33} [get_ports {LED[15]}]; # LED 15
  
## 7 segment display
#set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[0]}]; # CA
#set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[1]}]; # CB
#set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[2]}]; # CC
#set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[3]}]; # CD
#set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[4]}]; # CE
#set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[5]}]; # CF
#set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[6]}]; # CG
#set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[7]}]; # DP

#set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[0]}]; # AN0
#set_property -dict {PACKAGE_PIN U4 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[1]}]; # AN1
#set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[2]}]; # AN2
#set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[3]}]; # AN3