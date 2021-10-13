
************** Module SRAM_6T_swad **************
.subckt SRAM_6T_swad q2 q1 blb bl wl example_param=1.0
m1 q1 q2 gnd gnd scmosn w='1.2u' l='0.4u' m='1'
m2 q2 q1 gnd gnd scmosn w='1.2u' l='0.4u' m='1'
m3 q1 wl bl gnd scmosn w='0.6u' l='0.8u' m='1'
m4 q2 wl blb gnd scmosn w='0.6u' l='0.8u' m='1'
m5 q1 q2 vdd vdd scmosp w='0.6u' l='1.2u' m='1'
m6 q2 q1 vdd vdd scmosp w='0.6u' l='1.2u' m='1'
.ends SRAM_6T_swad

