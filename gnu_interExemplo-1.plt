# gnu_interExemplo-1
#
# Física Aplicada à Computação
# Lic. Eng. Informática - Ano lectivo 2021-22
#
# nuno.pereira@ipbeja.pt
#
# CC-BY-SA 4.0

reset
set term wxt enhanced

set title "Exemplo de ciclos for"
set xlabel "{/Symbol a} (^{/Symbol o})"
set ylabel "sin({/Symbol w}{/Symbol a})
set key out Left reverse samplen .7
set angle degree
set xrange [0:360]
set dummy alfa
set sample 500
set xtics 0,30,360

f(w,alfa) = sin(w*alfa)

plot for[w=1:6] f(w,alfa) t "{/Symbol w=}".sprintf("%i", w)
