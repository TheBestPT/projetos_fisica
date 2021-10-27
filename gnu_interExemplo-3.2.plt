# gnu_interExemplo-3.2
#
# Física Aplicada à Computação
# Lic. Eng. Informática - Ano lectivo 2021-22
#
# nuno.pereira@ipbeja.pt
#
# CC-BY-SA 4.0

reset
set term wxt font "Liberation Sans" enhanced
set encoding locale
set autoscale
set sample 500

set title "Física Aplicada à Computação - animação: mov. aleatório"
set xlabel "x"
set ylabel "y"

xmax = 100
ymax = 100
sx = 5
sy = 5

set xrange [0:xmax]
set yrange [0:ymax]

x = 0
y = 0
dt = .1
count = 50
k = 1

while (k <=  count) {
    dx = rand(0)*sx
    dy = rand(0)*sy
    x = x + dx
    y = y + dy

    if (x>xmax) {x=0}
    if (y>ymax) {y=0}

    set object 1 circle at x,y size 1
    set object 2 circle at xmax-x,ymax-y size 1

    set label 1 at graph .9, .9 sprintf("k= %d", k)
    plot 1/0 t ""

    pause dt

    k = k + 1
}
