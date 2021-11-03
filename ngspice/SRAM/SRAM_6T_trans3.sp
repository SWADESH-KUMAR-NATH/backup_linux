***** SIMULATION FOR 6T-SRAM TRANSIENT ANALYSIS with write-driver *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd

*pre-layout 6T-Cell
*.include '/home/swadesh/lab/ngspice/SRAM/SRAM_6T2.sp'
*post-layout 6T-Cell
.include '/home/swadesh/lab/magic/sram/6T-cell/6T-cell.spice'

*pre-layout sa
*.include '/home/swadesh/lab/ngspice/SRAM/sense_amp.sp'
*post-layout sa
.include '/home/swadesh/lab/magic/sram/sa/sa.spice'

*pre-layout pc
*.include '/home/swadesh/lab/ngspice/SRAM/pre_charge.sp'
*post-layout pc
.include '/home/swadesh/lab/magic/sram/pc/pc.spice'

*pre-layout wd
*.include '/home/swadesh/lab/ngspice/SRAM/write_driver.sp'
*post-layout wd
.include '/home/swadesh/lab/magic/sram/wd/wd.spice'

.tran 10p 160n

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
v2 wl gnd pulse 0 5 15n .25n .25n 17n 40n
*v3 w0 gnd pulse 0 5 53n .25n .25n 4n 80n
*v4 w1 gnd pulse 0 5 13n .25n .25n 4n 80n
v5 r_en gnd pulse 0 5 -18n .25n .25n 39n 40n
v6 w_en gnd pulse 0 5 10n .25n .25n 10n 40n
v7 din gnd pulse 0 5 10n .25n .25n 20n 60n
*v7 din gnd dc 5
Xsram1 q2 q1 blb bl wl SRAM_6T_swad
Xpc1 blb pc bl pre_charge_swad
Xsa1 blb bl sa sab r_en sense_amp_swad
Xwd1 w_en din blb bl write_driver_swad

.control
run
plot v(pc) v(wl)-6 v(bl)-12 v(blb)-12 v(q1)-18 v(q2)-18 w_en-24 din-30 r_en-36 sa-42 sab-42
.endc
.end

