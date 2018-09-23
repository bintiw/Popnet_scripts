#dashtype le type hercha ... --- .-.-
#pt le + * - hercha line ma
#ps le + * - ko size hercha line ma
#rgb le color hercha


set style line 2 lw 10 dashtype 1 pt 0 ps 3 lc rgb "red"
set style line 3 lw 10 dashtype 2 pt 0 ps 3 lc rgb "blue"
set style line 4 lw 10 dashtype 1 pt 2 ps 3 lc rgb "red"
set style line 5 lw 10 dashtype 2 pt 2 ps 3 lc rgb "blue"
set style line 6 lt 3 lw 10 dashtype 1 pt 31 ps 1 lc rgb "red"
set style line 7 lt 7 lw 10 dashtype 2 pt 31 ps 1 lc rgb "blue"
set style line 8 lt 5 lw 10 dashtype 1 pt 11 ps 4 lc rgb "red"
set style line 9 lt 9 lw 10 dashtype 2 pt 11 ps 4 lc rgb "blue" 
set style line 10 lt 18 lw 5 dashtype 2 pt 17 ps 3

set term post eps color font "courier,50" rounded
set termoption dash

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

#set grid back linestyle 81
set border 11 back lw 3
set xtics out scale 2
set ytics out scale 2

set size 3.5,2.62

#set style line 2 lt 2 lw 10 dashtype 1 pt 5 ps 6 lc rgb "forest-green"