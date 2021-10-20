# teste 1
reset
set size square

set title "Fisica aplicada á computação\n Teste 1 "
set xlabel "x_{1}"
set ylabel "y_{1}"

set x2label "x_{2}"
set y2label "y_{2}"
# set font "Arial, 8"
set xtics nomirror
set x2tics
set ytics nomirror 
set y2tics

set key at graph 1.3, 1 reverse Left samplen .6 box title "Funções" font "Arial, 8"
set xrange [-2*pi:2*pi]
set x2range [-10:10]

f(x) = sin(x)
g(x) = cos(x)
h(x) = x**2 + 2**2 - 5


plot f(x), g(x) lw 1.5 lc rgb "orange", h(x) axis x1y2 lw 1.5 lc rgb "blue"