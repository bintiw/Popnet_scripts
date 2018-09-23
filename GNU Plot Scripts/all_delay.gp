reset
load 'all_style.gp'

#set title "Multicast Desitnation Set (7-10) with 0,4,8 Hardware Trojans"

set xlabel "Injection Rate {/Times-Italic (packet/node/cycle)} "
set xrange [0.002:0.08]
#set xtics 0.005

set ylabel "Average Packet Latency {/Times-Italic (cycle)}"
set yrange [20:2500]
set ytics 500


set key left top
set out "ht_delay710.eps"

plot \
"all_delay" u 1:2 t 'H-0' w lp ls 2, \
"all_delay" u 1:3 t 'M-0' w lp ls 3, \
"all_delay" u 1:4 t 'H-4' w lp ls 4, \
"all_delay" u 1:5 t 'M-4' w lp ls 5, \
"all_delay" u 1:6 t 'H-8' w lp ls 6, \
"all_delay" u 1:7 t 'M-8' w lp ls 7
