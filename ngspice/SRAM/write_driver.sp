
************** Module write_driver_swad **************
.subckt write_driver_swad en din blb bl
xi2 n3 n0 inv_swad
m1 blb n0 gnd gnd scmosn w='3.6u' l='0.4u' m='1' 
m0 bl n1 gnd gnd scmosn w='3.6u' l='0.4u' m='1' 
xi3 n2 n1 inv_swad
xi1 en n4 n2 nand_swad
xi4 din n4 inv_swad
xi0 en din n3 nand_swad
.ends write_driver_swad

************** Module inv_swad **************
.subckt inv_swad in out example_param=1.0
m0 out in gnd gnd scmosn w='0.8u' l='0.4u' m='1' 
m1 out in vdd vdd scmosp w='2u' l='0.4u' m='1' 
.ends inv_swad

************** Module nand_swad **************
.subckt nand_swad a b y example_param=1.0
m0 y a vdd vdd scmosp w='1.8u' l='0.4u' m='1' 
m1 y b vdd vdd scmosp w='1.8u' l='0.4u' m='1' 
m2 y a n0 gnd scmosn w='1.2u' l='0.4u' m='1' 
m3 n0 b gnd gnd scmosn w='1.2u' l='0.4u' m='1' 
.ends nand_swad

