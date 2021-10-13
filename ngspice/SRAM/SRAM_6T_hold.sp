***** Spice Netlist for Cell 'SRAM_6T_swad' for HOLD Operation *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.dc v1 0 5 0.001
.include '/home/swadesh/lab/ngspice/SRAM/SRAM_6T2.sp'
v0 vdd gnd dc 5
v1 q1 gnd dc 5
v2 wl gnd dc 0
Xsram1 q2 q1 blb bl wl SRAM_6T_swad

.control
run
set color0=white
set color1=black
plot v(q2) vs v(q1) v(q1) vs v(q2)
.endc
.end

