set title 'Función Exponencial'
set title font ",15" norotate
set xlabel "x"
set xlabel font "Verdana,12"
set ylabel "y(x)"
set ylabel font "Verdana,12"
set style data line
set xrange [0:10]
set yrange [0:22500]
set key left
plot [0:10] exp(x) title "exp(x)" with lines lt 1 linewidth 3,\
"ejercicio2.txt" index 0 using 1:2  lt 2 linewidth 3  title "f1",\
"ejercicio2.txt" index 1 using 1:2  lt 3 linewidth 3 title "f3",\
"ejercicio2.txt" index 2 using 1:2  lt 4 linewidth 3 title "f5",\
"ejercicio2.txt" index 3 using 1:2  lt 6 linewidth 3 title "f7",\
"ejercicio2.txt" index 4 using 1:2  lt 5 linewidth 3 title "f9",\
"ejercicio2.txt" index 5 using 1:2  lt 7 linewidth 3 title "f11",\
"ejercicio2.txt" index 6 using 1:2  lt 16 linewidth 3 title "f13",\
"ejercicio2.txt" index 7 using 1:2  lt 10 linewidth 3 title "f15"

