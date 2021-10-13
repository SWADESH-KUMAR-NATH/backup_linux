
/*
			S K I L L   C A D A N C E
		C H E A T   S H E E T   F O R   B E G I N N E R S	
*/

geOpen( ?lib "swadesh" ?cell "inverter" ?view "schematic" ?mode "r" )
hiZoomAbsoluteScale( window( <window number> ) <zoom factor> )
hiPan( window( <window number> ) x:y )

<var>=geGetEditCellView() /* for default current cell */
dbCreateRect( <var> <material> list( x1:y1 x2:y2 ) ) /* eg. "M1" for metal1*/


