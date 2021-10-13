***** SIMULATION FOR 6T-SRAM TRANSIENT ANALYSIS without write-driver *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.include '/home/swadesh/lab/ngspice/SRAM/SRAM_6T2.sp'
.include '/home/swadesh/lab/ngspice/SRAM/pre_charge.sp'
.tran 10p 80n

*********** Write Driver replacement ************
m14 bl w0 gnd gnd scmosn w=3.6u l=0.4u m=1
m15 blb w1 gnd gnd scmosn w=3.6u l=0.4u m=1

*********** Parasitics from other 6T-Cells *************
m10 bl gnd vdd gnd scmosn w=0.6u l=0.8u m=127
m11 blb gnd vdd gnd scmosn w=0.6u l=0.8u m=127
m12 vdd wl gnd gnd scmosn w=0.6u l=0.8u m=255
m13 vdd wl vdd vdd scmosn w=0.6u l=0.8u m=255

cw1 bl gnd 1270f
cw2 blb gnd 1270f
cw3 wl gnd 5100f

********** sources *********
v0 vdd gnd dc 5
v1 pc gnd pulse 0 5 5n .25n .25n 30n 40n
v2 wl gnd pulse 0 5 15n .25n .25n 10n 40n
v3 w0 gnd pulse 0 5 53n .25n .25n 4n 80n
v4 w1 gnd pulse 0 5 13n .25n .25n 4n 80n

Xsram1 q2 q1 blb bl wl SRAM_6T_swad
Xpcc1 blb pc bl pre_charge_swad

.control
run
plot pc+36 wl+30 q1+6 q2+6 w0+18 w1+24 bl+12 blb+12 
.endc
.end

