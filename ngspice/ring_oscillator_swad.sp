***** Spice Netlist for Cell 'ring_oscillator_swad' *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd

**TEST BENCH**                                                                  
v0      vdd     gnd	dc	5
Xro1	out	ring_oscillator_swad

************** Module ring_oscillator_swad **************
.subckt ring_oscillator_swad out example_param=1.0
xi0 n1 n0 inv_swad
xi1 out n1 inv_swad
xi2 n0 out inv_swad
.ends ring_oscillator_swad

************** Module inv_swad **************
.subckt inv_swad in out example_param=1.0
m0 out in gnd gnd scmosn w='0.6u' l='0.4u' m='1' 
m1 out in vdd vdd scmosp w='2.5u' l='0.4u' m='1' 
.ends inv_swad

.tran 5p 5n
.control
run
plot v(out)
.endc

.end

