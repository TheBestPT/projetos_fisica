reset
set term wxt font "Liberation Sans" enhanced
set size square
set encoding locale
set sample 500
unset key
set dummy t

set title "Física Aplicada à Computação - animação: órbita"
set xlabel "x"
set ylabel "y"

xmax = 1.5
ymax = 1.5

set xrange [-xmax:xmax]
set yrange [-ymax:ymax]

set parametric
set angle degree

#CI
xo = 0
vo = 10 # m/s
yo = 15 # m
alfa = 30 # graus
a = -9.8 #m/s2



#Calcular as componentes da velocidade incical
vox = vo * cos(alfa)
voy = vo * sin(alfa)


#equações do movimento
x(t) = xo + vox * t # MRU
y(t) = yo + voy * t + .5 * a * t ** 2 #MRUA


plot y(t)