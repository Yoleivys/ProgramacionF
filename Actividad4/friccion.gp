set title 'Movimiento de Proyectil con resistencia del aire'
set title font ",15" norotate
set xlabel "Alcance Horizontal"
set xlabel font "Verdana,12"
set ylabel "Alcance Vertical"
set ylabel font "Verdana,12"
set style data lines       # Todas las graficas las pone con lineas
set xrange [0:3.5]
set yrange [0:1.5]
set grid
set key left box
plot "friccion.dat" index 0 using 2:3 ls 2 lw 3 title "v_{0} = 2 ",\
"friccion.dat" index 1 using 2:3 ls 6 lw 3 title "v_{0} = 4",\
"friccion.dat" index 2 using 2:3 ls 7 lw 3 title "v_{0} = 6",\
"friccion.dat" index 3 using 2:3 ls 8 lw 3 title "v_{0} = 8",\
"friccion.dat" index 4 using 2:3 ls 9 lw 3 title " v_{0} = 10"

