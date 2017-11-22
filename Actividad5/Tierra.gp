set title 'Trayectoria del movimiento de la tierra alrededor del sol'
set title font ",15" norotate
set style data lines      # Todas las graficas las pone con lineas
set xzeroaxis
unset key
unset border
unset xtics
unset ytics
set xrange [-162000000.0:162000000.0]
set yrange [-162000000.0:162000000.0]
set label 1 "Sol" at 0.0, 0.0 center front
set label 2  at  38934692.676988836, 166775146.26014927
set label 2 "Equinoccio de primavera\n21 de marzo" 
set label 3  at  -127105887.13936114, 27203271.291180104
set label 3 "Solsticio de verano\n21 de junio"  
set label 4  at  -20382310.488603789, -158204997.95602763
set label 4 "Equinoccio de otoño\n23 de septiembre" 
set label 5  at  54770601.2, -22729338.9
set label 5 "Solsticio de invierno\n22 de diciembre" 
plot "Mov_tierra.txt" using 2:3 ls 2 lw 3,\
"posicion.txt" using 2:3 with circles lw 2 lc rgb "red",\
"Sol.txt" using 2:3 with circles lw 2 lc rgb "yellow"


