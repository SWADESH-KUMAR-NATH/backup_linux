
************** Module sense_amp_swad **************
.subckt sense_amp_swad blb bl sa sab en
m3 sa sab vdd vdd scmosp w='3.6u' l='0.4u' m='1' 
m4 sab sa vdd vdd scmosp w='3.6u' l='0.4u' m='1' 
m1 sa sab n0 n0 scmosn w='1.8u' l='0.4u' m='1' 
m2 sab sa n0 n0 scmosn w='1.8u' l='0.4u' m='1' 
m5 blb en sab vdd scmosp w='4.8u' l='0.4u' m='1' 
m6 bl en sa vdd scmosp w='4.8u' l='0.4u' m='1' 
m0 n0 en gnd gnd scmosn w='1.8u' l='0.4u' m='1' 
.ends sense_amp_swad



