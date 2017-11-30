set title 'Trayectoria del movimiento de la tierra yla luna alrededor del sol'
set title font ",15" norotate
set style data lines      # Todas las graficas las pone con lineas
set xzeroaxis
unset key
unset border
unset xtics
unset ytics
set xrange [-170000000.0:170000000.0]
set yrange [-170000000.0:170000000.0]
set label 1 "Sol" at 0.0, 0.0 center front
plot "TierraLuna.txt" using 1:2 ls 2 lw 3,\
"TierraLuna.txt" using 3:4  ls 3 lw 3,\
"Sol.txt" using 2:3 with circles lw 2 lc rgb "yellow"


