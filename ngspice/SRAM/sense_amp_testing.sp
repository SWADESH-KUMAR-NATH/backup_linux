** sense amp testing **

.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.include '/home/swadesh/lab/ngspice/SRAM/sense_amp.sp'
.tran 10p 150n
Xsa1 blb bl sa sab en sense_amp_swad

*********** Parasitics from other 6T-Cells *************
m10 bl gnd vdd gnd scmosn w=0.6u l=0.8u m=127
m11 blb gnd vdd gnd scmosn w=0.6u l=0.8u m=127
m12 vdd wl gnd gnd scmosn w=0.6u l=0.8u m=255
m13 vdd wl vdd vdd scmosn w=0.6u l=0.8u m=255

cw1 bl gnd 1270f
cw2 blb gnd 1270f
cw3 wl gnd 5100f

v0 vdd gnd dc 5
v1 bl gnd pulse 4.5 5 0n .25n .25n 20n 40n
v2 blb gnd pulse 5 4.5 0n .25n .25n 20n 40n
v3 en gnd pulse 0 5 -85n .25n .25n 40n 80n

.control
run
*plot bl+12 blb+12 en+6 sa sab
plot bl
.endc
.end
