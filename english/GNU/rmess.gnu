unset clip points
set clip one
unset clip two
set bar 1.000000 front
set border 31 front linetype -1 linewidth 1.000
set xdata
set ydata
set boxwidth
set style fill  empty border
set style rectangle back fc lt -3 fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02, first 0, 0 
set dummy x,y
set format x "% g"
set angles radians
set grid nopolar
set grid xtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   linetype 0 linewidth 1.000,  linetype 0 linewidth 1.000
set key title ""
set key inside right top vertical Right noreverse enhanced autotitles nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title  offset character 0, 0, 0
unset logscale
set logscale x 10
set offsets 0, 0, 0, 0
set pointsize 2
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
set view 60, 30, 1, 1
set samples 100, 100
set isosamples 10, 10
set surface
unset contour
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
set xzeroaxis linetype -2 linewidth 1.000
set yzeroaxis linetype -2 linewidth 1.000
set ticslevel 0.5
set mxtics default
set mytics default
set ytics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
#set ytics autofreq  norangelimit
set ytics 1  norangelimit
set xlabel  offset character 0, 0, 0 font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback  # (currently [0.00000:8.00000] )
set ylabel  offset character 0, 0, 0 font "" textcolor lt -1 rotate by -270
set yrange [ -5.00000 : 5.00000 ] noreverse nowriteback
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "de_DE.UTF-8"
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front bdefault
set loadpath 
set fontpath 
set fit noerrorvariables
GNUTERM = "wxt"
set terminal epslatex color solid
set output "../GNU/Mega8res.eps"
set grid
set logscale x
set style data linespoints
set style line 1  linetype 1 linewidth 3.000 
set style line 2  linetype 2 linewidth 3.000 
set style line 3  linetype 3 linewidth 3.000 
set xlabel "Resistor value / Ohm"
set format x "%.0s%c"
set format y "% g"
set xtics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
set xtics autofreq  norangelimit
set ylabel "Error / Percent"
plot "../GNU/rmess.dat" u 1:(($2-$1)/$1*100) title "Mega8-1" ls 1, "../GNU/rmess.dat" u 1:(($3-$1)/$1*100) title "Mega8-2" ls 2, "../GNU/rmess.dat" u 1:(($4-$1)/$1*100) title "Mega8-3" ls 3,\
"../GNU/ormess.dat" u 1:(($2-$1)/$1*100) title "Mega8orig" ls 4
set output
set output "../GNU/Mega8Ares.eps"
plot "../GNU/rmess.dat" u 1:(($5-$1)/$1*100) title "Mega8A-4" ls 1, "../GNU/rmess.dat" u 1:(($6-$1)/$1*100) title "Mega8A-5" ls 2, "../GNU/rmess.dat" u 1:(($7-$1)/$1*100) title "Mega8A-6" ls 3
set output
set output "../GNU/Mega8Lres.eps"
plot "../GNU/rmess.dat" u 1:(($8-$1)/$1*100) title "Mega8L-7" ls 1, "../GNU/rmess.dat" u 1:(($9-$1)/$1*100) title "Mega8L-8" ls 2, "../GNU/rmess.dat" u 1:(($10-$1)/$1*100) title "Mega8L-9" ls 3
set output
set output "../GNU/Mega168res.eps"
plot "../GNU/rmess.dat" u 1:(($11-$1)/$1*100) title "Mega168" ls 1, "../GNU/rmess.dat" u 1:(($12-$1)/$1*100) title "Mega168as" ls 2
set output
#    EOF
