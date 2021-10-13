***** Spice Netlist for Cell 'D_flipflop_swad' *****
.lib /home/swadesh/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.global vdd gnd

**TEST BENCH**                                                                  
v0      vdd     gnd     dc      2.5
v1      d       gnd     pulse   0       2.5     1.5n    100p    100p    3n      6n
v2      CK      gnd     pulse   0       2.5     1.5n    100p    100p    6n      12n
xdff1	d	ck	q	D_flipflop_swad
************** Module D_flipflop_swad **************
.subckt D_flipflop_swad d ck q
xi0 ck n0 d D_latch_swad
xi1 n1 q n0 D_latch_swad
xi2 ck n1 inv_swad
.ends D_flipflop_swad

************** Module inv_swad **************
.subckt inv_swad in out example_param=1.0
m0 out in gnd gnd scmosn w='0.6u' l='0.4u' m='1' 
m1 out in vdd vdd scmosp w='2.5u' l='0.4u' m='1' 
.ends inv_swad

************** Module tx_gate_swad **************
.subckt tx_gate_swad ckb ck in out example_param=1.0
m0 in ck out gnd scmosn w='0.6u' l='0.4u' m='1' 
m1 in ckb out vdd scmosp w='2.5u' l='0.4u' m='1' 
.ends tx_gate_swad

************** Module D_latch_swad **************
.subckt D_latch_swad ck q d example_param=1.0
xi0 d n2 inv_swad
xi1 clkb clk n2 n1 tx_gate_swad
xi2 n1 q inv_swad
xi3 clk clkb n0 n1 tx_gate_swad
xi4 q n0 inv_swad
xi5 clkb clk inv_swad
xi6 ck clkb inv_swad
.ends D_latch_swad

.tran 5p 25n
.control
run
plot v(d)+3 v(CK) v(Q)+6
.endc

.end

