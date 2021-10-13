***** Spice Netlist for Cell 'buffer_swad' *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom

************** Module buffer_swad **************
.subckt buffer_swad in out example_param=1.0
xi0 in n0 inv_swad
xi1 n0 out inv_swad
.ends buffer_swad

************** Module inv_swad **************
.subckt inv_swad in out example_param=1.0
m1 out in vdd vdd scmosp w='2u' l='0.4u' m='1' 
m0 out in gnd gnd scmosn w='1u' l='0.4u' m='1' 
.ends inv_swad

* Test-Bench *
.temp 27
.global vdd gnd
xbfr1	in	out	buffer_swad
v0      vdd     gnd     dc      5
v1      in      gnd     pulse   0       5       1.5n    100p    100p    3n      6n
.tran 5p 15n
.control
run
*plot v("inverter_1/out")+6 v("inverter_0/in")
plot v(in) v(out)+6
.endc
.measure tran tplh trig v(in) val=2.5 fall=1 targ v(out) val=2.5 fall=1
.measure tran tphl trig v(in) val=2.5 rise=1 targ v(out) val=2.5 rise=1

.end

