***** Spice Netlist for Cell 'SRAM_6T_swad' for write Operation *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.dc v1 0 5 0.001
.include '/home/swadesh/lab/ngspice/SRAM/SRAM_6T2.sp'
v0 vdd gnd dc 5
v1 q1 gnd dc 5
v2 wl gnd dc 5
v3 blb gnd dc 0
v4 bl gnd dc 5
v5 bl1 gnd dc 5
v6 blb1 gnd dc 0
Xsram1 q2 q1 blb bl wl SRAM_6T_swad
Xsram2 q1 q21 blb1 bl1 wl SRAM_6T_swad

.control
run
plot q2 q21
.endc
.end

