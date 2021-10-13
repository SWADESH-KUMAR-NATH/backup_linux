# 1
proc I {x} {return $x}

# 2
proc K {x y} {return $x}

# 3
proc change {x} {set a [expr $x/25];set b [expr ($x-$a*25)/10];set c [expr ($x-$a*25-$b*10)/5];set d [expr ($x-$a*25-$b*10-$c*5)/1];return "$a $b $c $d"}

# 4
proc iota {n} {for {set i 0;set x {}} {$i<$n} {incr i} {lappend x $i};return $x}

# 5
proc incrlist {x} {set y {};foreach i $x {lappend y [expr $i+1]};return $y}

# 6
proc strlenlist {n} {set b {}; foreach i $n {lappend b [string length $i]};return $b}

# 7
proc sumlist {x} {set sum 0;foreach i $x {incr sum $i};return $sum }

# 8
proc multlist {x} {set mul 1;foreach i $x {set mul [ expr $mul * $i ]};return $mul }

# 9
proc catlist {n} {set f ""; foreach i $n {set f $f$i};return $f}

# 10
proc factorial {num} {set fact 1;for {set i 0} {$i<$num} {incr i} {set fact [ expr $fact*($i+1)]};return $fact}

# 11
proc factorial {n} {set fact {};for {set i $n} {$i>0} {incr i -1} {if { $i == $n } {set f $i} else {set f x$i};lappend fact $f};return $fact}
# or #
proc factorial {n} {set f {}; set m $n; while { $n > 0 } {if {$n==$m} {lappend f $n} else {lappend f *$n}; incr n -1}; return $f}
# or #
proc factorial {n} {set f {}; set m $n; while { $n > 0 } {if {$n==$m} {lappend f $n} else {lappend f *$n}; incr n -1}; return [expr $f]}

# 12
factorial 6




