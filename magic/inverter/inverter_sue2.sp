***** Spice Netlist for Cell 'inv_swad' *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.tran 5p 15n

* TEST-BENCH *
v0	vdd	gnd	dc	5
v1	in	gnd	pulse	0	5	1.5n	100p	100p	3n	6n
xinvt0	in	out	inv_swad
************** Module inv_swad **************
.subckt inv_swad in out example_param=1.0
m1 out in vdd vdd scmosp w='2u' l='0.4u' m='1' 
m0 out in gnd gnd scmosn w='1u' l='0.4u' m='1' 
.ends inv_swad

.control
run
plot v(out)+6 v(in)
.endc

.measure tran tplh trig v(in) val=2.5 fall=1 targ v(out) val=2.5 rise=1
.measure tran tphl trig v(in) val=2.5 rise=1 targ v(out) val=2.5 fall=1
.end

