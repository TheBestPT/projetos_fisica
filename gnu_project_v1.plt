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

set label 1 str_tmax at tmax, ymax*1.3 font ",8"
set label 2 str_xmax at tmax, ymax*1.2 font ",8"
set label 3 str_ymax at tmax, ymax*1.1 font ",8"
set label 4 str_tv at tv*.8, ymax*.1 font ",8"
set label 5 str_xa at tv*.4, ymax*.1 font ",8"
set label 6 str_vi at graph 1.3, .46 font ",8"
set label 7 str_gama at graph 1.3, .5 font ",8"
set label 8 str_vo at graph 1.3, .34 font ",8"
set label 9 str_xo at graph 1.3, .26 font ",8"
set label 10 str_alfa at graph 1.3, .18 font ",8"






#FALTA MOSTRAR AS CONDICOES INICIAS

set xrange[0:tv]

plot x(t) ,\
     y(t), \
     vx(t) axes x1y2 w l lw 1.5, \
     vy(t) axes x1y2 w  l lw 1.5

 pause(-1)


 set parametric
 set trange[0:tv]
 set autoscale
 unset y2tics
 set ytics mirror
 set xlabel "x (m)"
 set ylabel "y (m)"
 set y2label ""
 unset label
 unset key 
 plot x(t), y(t)   