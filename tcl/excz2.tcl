# 1
proc change {x args} {set result {}; set res {};set a [lsort -integer $args]; foreach i $a {set res [linsert $res 0 $i]};set sum 0; set result {}; foreach j $res { set b [expr ($x-$sum)/$j]; set sum [expr $sum+($b*$j)]; dict set each $j $b};foreach i $args {lappend result [dict get $each $i]}; return $result}

# 2
proc iota {n {p 1}} {for {set i 0;set x {}} {$i<$n} {incr i} {lappend x [expr $p*$i]};return $x}

# 3

