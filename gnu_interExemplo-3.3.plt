# gnu_interExemplo-3.3
#
# Física Aplicada à Computação
# Lic. Eng. Informática - Ano lectivo 2021-22
#
# nuno.pereira@ipbeja.pt
#
# CC-BY-SA 4.0

reset
set term wxt font "Liberation Sans" enhanced
set size square
set encoding locale
set sample 500
unset key

set title "Física Aplicada à Computação - animação: órbita"
set xlabel "x"
set ylabel "y"

xmax = 1.5
ymax = 1.5

set xrange [-xmax:xmax]
set yrange [-ymax:ymax]

set parametric
set angle degree

x(t) = cos(t)
y(t) = sin(t)

dt = .5

do for[n=0:360/dt] {
    t = n*dt
    set object 1 circle at x(t),y(t) size .05
    set object 2 circle at x(t+90),y(t+90) size .05
    set object 3 circle at x(t+180),y(t+180) size .05
    set object 4 circle at x(t+270),y(t+270) size .05
    plot 1/0, 1/0
}
