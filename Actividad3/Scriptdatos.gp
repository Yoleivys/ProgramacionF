set title 'Movimiento de Protectiles'
set title font ",15" norotate
set xlabel "Alcance Horizontal"
set xlabel font "Verdana,12"
set ylabel "Alcance Vertical"
set ylabel font "Verdana,12"
set style data points
set xrange [-1:11]
set yrange [0:5]
set pointsize 0.7
plot "datos.dat" index 0 using 1:2  with linespoints ls 5 title "15°",\
"datos.dat" index 1 using 1:2  with linespoints ls 6 title "30°",\
"datos.dat" index 2 using 1:2  with linespoints ls 7 title "45°",\
"datos.dat" index 3 using 1:2  with linespoints ls 8 title "60°",\
"datos.dat" index 4 using 1:2  with linespoints ls 9 title "75°",\
"datos.dat" index 5 using 1:2  with linespoints ls 10 title "90°"
