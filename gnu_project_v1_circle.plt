reset
set term wxt
set size square
set encoding locale
set dummy t # varivel independente (x normalmente é o padrão)
set title "Lançamnento de projéteis 2D" font ",12"
set angle degree
set xlabel "t (s)"
set ylabel "x,y (m)"
set key at graph 1.45, 1 reverse Left samplen .7
set ytics nomirror
set y2tics
set y2label "v_{x},v_{y} (m/s)"

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

#Tempo de altura máxima
tmax = -voy/a
print(tmax)

#Altura máxima
ymax = y(tmax)
xmax = x(tmax)
print(ymax) 

#Equações das componentes da velocidade
vx(t) = vox
vy(t) = vox + a*t

#Tempo de vo
tv = (- voy - sqrt(voy*voy-2*a*yo))/a

#alcance
xa = x(tv)

#velocidade de impacto
viy = vy(tv)
vi = sqrt(vox*vox + viy*viy)
gama = atan(viy/vox)

#legendas
str_ymax = sprintf("y_{max} = %0.2f m", ymax)
str_xmax = sprintf("x_{max} = %0.2f m", xmax)
str_tmax = sprintf("t_{max} = %0.2f m", tmax)
str_tv = sprintf("t_{max} = %0.2f m", tv)
str_xa = sprintf("x_{max} = %0.2f m", xa)
str_vi = sprintf("v_{max} = %0.2f m", vi)
str_gama = sprintf("{/Symbol g} = %0.2f º", gama)
str_vo = sprintf("v_{o} = %0.2f º", vo)
str_xo = sprintf("x_{o} = %0.2f º", xo)
str_alfa = sprintf("{/Symbol a} = %0.2f º", alfa)







#FALTA MOSTRAR AS CONDICOES INICIAS

set xrange[0:tv]



dt = .01

do for[n=0:360/dt]{
    t = n*dt
    if(t > tv) { exit } #para quando o x da janela acabar
    set object 1 circle at t, y(t) size .05 # FUNCIONA MAS NAO E PARAMETRICO set object 1 circle at t, y(t) size .05
    # set object 2 polygon from y(t) to y(t/.2) size .1
    set arrow 2 from t, y(t) length .1
    plot y(t), x(t)
}




