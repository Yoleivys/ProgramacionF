set title 'Función Sin(x)'
set title font ",15" norotate
set xlabel "x"
set xlabel font "Verdana,12"
set ylabel "y(x)"
set ylabel font "Verdana,12"
set style data line
set xrange [-15:15]
set yrange [-15:15]
set key left
plot [-15:15] sin(x) title "sin(x)" with lines lt 1 linewidth 3,\
"ejercicio3.txt" index 0 using 1:2  lt 2 linewidth 3  title "f1",\
"ejercicio3.txt" index 1 using 1:2  lt 3 linewidth 3 title "f2",\
"ejercicio3.txt" index 2 using 1:2  lt 4 linewidth 3 title "f3",\
"ejercicio3.txt" index 3 using 1:2  lt 6 linewidth 3 title "f4",\
"ejercicio3.txt" index 4 using 1:2  lt 5 linewidth 3 title "f5",\
"ejercicio3.txt" index 5 using 1:2  lt 7 linewidth 3 title "f6",\
"ejercicio3.txt" index 6 using 1:2  lt 16 linewidth 3 title "f7",\
"ejercicio3.txt" index 7 using 1:2  lt -1 linewidth 3 title "f8",\
"ejercicio3.txt" index 8 using 1:2  lt 4 linewidth 3 title "f9",\
"ejercicio3.txt" index 9 using 1:2  lt 10 linewidth 3 title "f10",\
"ejercicio3.txt" index 0 using 1:3  lt 6 linewidth 3 title "f0"
