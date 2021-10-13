***** Spice Netlist for Cell 'expt' *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd
*.dc v1 0 5 .001
.tran 5p 25n
**TEST BENCH**                                                                  
v0      vdd     gnd     dc      5
*v1      Q1      gnd	dc	5
v1      q1	gnd     pulse   0       5     3n    100p    100p    3n      6n
xckt1	q2	q1	expt

************** Module expt **************
.subckt expt q1 q2
m0 q2 q1 gnd gnd scmosn w='0.6u' l='0.4u' m='1' 
m1 gnd q2 q1 gnd scmosn w='0.6u' l='0.4u' m='1' 
m2 q2 q1 vdd vdd scmosp w='0.6u' l='0.4u' m='1' 
m3 vdd q2 q1 vdd scmosp w='0.6u' l='0.4u' m='1' 
.ends expt

.control
run
plot v(q1) v(q2)
.endc

.end

