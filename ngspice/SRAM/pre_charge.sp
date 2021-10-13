
************** Module pre_charge_swad **************
.subckt pre_charge_swad blb pc bl
m1 blb pc vdd vdd scmosp w='3.6u' l='0.4u' m='1' 
m0 bl pc vdd vdd scmosp w='3.6u' l='0.4u' m='1' 
m2 bl pc blb vdd scmosp w='3.6u' l='0.4u' m='1' 
.ends pre_charge_swad

