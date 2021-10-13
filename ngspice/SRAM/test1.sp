***** SIMULATION FOR 6T-SRAM TRANSIENT ANALYSIS *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.include '/home/swadesh/lab/ngspice/SRAM/SRAM_6T2.sp'
.tran 10p 20n

*********** Parasitics *************
m10 bl gnd vdd gnd scmosn w=0.8u l=0.4u m=127
m11 blb gnd vdd gnd scmosn w=0.8u l=0.4u m=127
m12 vdd wl gnd gnd scmosn w=0.8u l=0.4u m=255
m13 vdd wl vdd vdd scmosn w=0.8u l=0.4u m=255

cw1 bl gnd 1270f
cw2 blb gnd 1270f
cw3 wl gnd 5100f

********** sources *********
v0 vdd gnd dc 5
v2 wl gnd pulse 0 5 1n .25n .25n 4.5n 10n
v3 bl gnd pulse 0 5 0n .25n .25n 2n 5n
Xsram1 q2 q1 blb bl wl SRAM_6T_swad

.control
run
plot v(wl) v(bl)-6 v(blb)-6 v(q1)-12 v(q2)-12
*plot wl bl-6 blb-6 q1-12 q2-12
.endc
.measure tran Tphl trig v(bl) val=2.5 fall=1 targ v(q1) val=2.5 fall=1
.measure tran Tplh trig v(bl) val=2.5 rise=2 targ v(q1) val=2.5 rise=1
.measure tran Tphl trig v(bl) val=4.5 fall=1 targ v(q1) val=4.5 fall=1
.measure tran Tplh trig v(bl) val=4.5 rise=2 targ v(q1) val=4.5 rise=1

.end

