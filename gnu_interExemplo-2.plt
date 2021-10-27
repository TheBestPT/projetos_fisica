# gnu_interExemplo-2
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

set title "Física Aplicada à Computação - animação: Série de Taylor"
set xlabel "x"
set ylabel "y"

f(x,n) = sum[k=1:n] (-1)**(k-1)*x**(2*k-1)/(2*k-1)!

do for[n=1:10] {
    plot [-8:8][-1.2:1.2] sin(x) lw 2, f(x,n) t sprintf("%d termos",n)
pause 2
}
