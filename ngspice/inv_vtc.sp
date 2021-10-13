***** Spice Netlist for Cell 'inv_swad' *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
.dc v1 0 5 0.001

v0 vdd gnd dc 5
v1 out gnd dc 5
Xinv1 in out inv_swad
Xinv2 out in inv_swad
************** Module inv_swad **************
.subckt inv_swad in out example_param=1.0
m1 out in vdd vdd scmosp w='1.6u' l='0.4u' m='1' 
m0 out in gnd gnd scmosn w='0.6u' l='0.4u' m='1' 
.ends inv_swad

.control
run
plot v(in) v(out)
.endc
.end

