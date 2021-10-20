reset
set term wxt
set size square
set encoding locale
set dummy t # varivel independente (x normalmente é o padrão)
set title "Lançamnento de projetil a partir de aviao" font ",12"
set angle degree


# load "~/Documents/ci_project_v2.plt"
#CI
a = 50 # aceleração m/s2
tbo = 2 #tempo de bornout segundos
yo = 500 # altura em metros
vo = 600 #velocidade inicial em km/h




plot t