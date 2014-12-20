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
set dummy x,y
set format x "% g"
set format y "% g"
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
set offsets 0, 0, 0, 0
set pointsize 3
set pointintervalbox 3
set encoding default
unset polar
unset parametric
unset decimalsign
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
set xtics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
set xtics autofreq  norangelimit
set ytics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
set ytics autofreq  norangelimit
set title "" 
set title  offset character 0, 0, 0 font "" norotate
set xlabel "" 
set xlabel  offset character 0, 0, 0 font "" textcolor lt -1 norotate
set ylabel "" 
set ylabel  offset character 0, 0, 0 font "" textcolor lt -1 rotate by -270
set zero 1e-08
set locale "de_DE.UTF-8"
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front bdefault
set fit noerrorvariables
GNUTERM = "wxt"
set terminal epslatex color solid
set grid
set style data points
set style line 1  linetype 1 linecolor rgb "red" linewidth 3.000  pointtype 4
set style line 2  linetype 1 linecolor rgb "green" linewidth 3.000 pointtype 2
set style line 3  linetype 1 linecolor rgb "blue" linewidth 3.000  pointtype 6
set style line 4  linetype 1 linecolor rgb "red" linewidth 3.000  pointtype 4
set xrange [ 0.00000 : 16.0000 ] noreverse nowriteback
set xlabel "Processor number"
set xtics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
set xtics 1  norangelimit
set ylabel "reference voltage / mV"
set key inside right top vertical Right noreverse enhanced autotitles nobox
set output "../GNU/SelfTref.eps"
set yrange [ 1050 : 1110 ] noreverse nowriteback 
plot "../GNU/selftest.dat" u 1:2 ls 4 title "Reference"
set output
set ylabel "voltage / mV"
set output "../GNU/SelfTMitL.eps"
set yrange [ -20 : 5 ] noreverse nowriteback 
plot "../GNU/selftest.dat" u 1:3 ls 4 title "RLmiddle12", "../GNU/selftest.dat" u 1:4 ls 2 title "RLmiddle13", "../GNU/selftest.dat" u 1:5 ls 3 title "RLmiddle23"
set output
set output "../GNU/SelfTMitH.eps"
set yrange [ -20 : 5 ] noreverse nowriteback 
plot "../GNU/selftest.dat" u 1:6 ls 4 title "RHmiddle12", "../GNU/selftest.dat" u 1:7 ls 2 title "RHmiddle13", "../GNU/selftest.dat" u 1:8 ls 3 title "RHmiddle23"
set output
set output "../GNU/SelfTbottomH.eps"
set yrange [ 0 : 5 ] noreverse nowriteback 
plot "../GNU/selftest.dat" u 1:9 ls 4 title "RHbottom1", "../GNU/selftest.dat" u 1:10 ls 2 title "RHbottom2", "../GNU/selftest.dat" u 1:11 ls 3 title "RHbottom3"
set output
set autoscale y
set output "../GNU/SelfTtopH.eps"
set ylabel "(voltage - VCC) / mV"
plot "../GNU/selftest.dat" u 1:12 ls 4 title "RHtop1", "../GNU/selftest.dat" u 1:13 ls 2 title "RHtop2", "../GNU/selftest.dat" u 1:14 ls 3 title "RHtop3"
set output
set ylabel "resistance / Ohm"
set output "../GNU/SelfTRiLo.eps"
plot "../GNU/selftest.dat" u 1:(($15*680)/(5001 - $15 - $18)) ls 4 title "RiLo1", \
     "../GNU/selftest.dat" u 1:(($16*680)/(5001 - $16 - $19)) ls 2 title "RiLo2", \
     "../GNU/selftest.dat" u 1:(($17*680)/(5001 - $17 - $20)) ls 3 title "RiLo3"
set output
set output "../GNU/SelfTRiHi.eps"
plot "../GNU/selftest.dat" u 1:(($18*680)/(5001 - $15 - $18)) ls 4 title "RiHi1", \
     "../GNU/selftest.dat" u 1:(($19*680)/(5001 - $16 - $19)) ls 2 title "RiHi2", \
     "../GNU/selftest.dat" u 1:(($20*680)/(5001 - $17 - $20)) ls 3 title "RiHi3"
set output
set ylabel "Capacity / pF"
set output "../GNU/SelfTcap0.eps"
plot "../GNU/selftest.dat" u 1:21 ls 4 title "CNULL1", "../GNU/selftest.dat" u 1:22 ls 2 title "CNULL2", "../GNU/selftest.dat" u 1:23 ls 3 title "CNULL3"
set output
set output "../GNU/SelfTrefKorr.eps"
set ylabel "Voltage correction / mV"
plot "../GNU/selftest.dat" u 1:24 ls 4 title "REF\\_C\\_KORR", "../GNU/selftest.dat" u 1:25 ls 2 title "REF\\_R\\_KORR"
set output
set output "../GNU/SelfTrefDiff.eps"
set ylabel "Voltage difference / mV"
set yrange [ -40 : 40 ] 
plot "../GNU/selftest.dat" u 1:($26-$2) ls 4 title "AREF - REF", "../GNU/selftest.dat" u 1:25 ls 2 title "REF\\_R\\_KORR"
set output
#    EOF
