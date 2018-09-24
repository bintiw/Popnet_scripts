#! /bin/bash

#ssmtp binayaktiwari@gmail.com < /home/bintiw/start
#This is a script to run the simulation and plot the simulation result#
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.002
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make clean
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make clean
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make clean
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.002

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.008
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.008

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.01
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.01

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.02
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.02

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.03
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.03

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.04
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.04

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.05
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.05

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.06
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.06

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.07
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.07

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.08
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.08

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
##---------------------------------------------------------------------------------------##

for i in {1..1}
do

cd /home/bintiw/Desktop/popnet/trace
./traffic.py 0.1
./copy_trace.sh

cd /home/bintiw/Desktop/8x8/Hier/popnet	
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Multipath/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0
cd /home/bintiw/Desktop/8x8/Unicast/popnet
make
./popnet -A 8 -c 2 -V 4 -B 4 -O 4 -F 4 -L 1000 -T 20000 -r 1 -I ./trace/bench -R 0

done

cd /home/bintiw/Desktop
./result.py 0.1

rm -rf Hier.txt
rm -rf Multipath.txt
rm -rf Unicast.txt
##---------------------------------------------------------------------------------------##
#################Script for Result Plot######################

cd /home/bintiw/Desktop
mv ./total_hop.txt ./plot
mv ./ave_del.txt ./plot
mv ./total_fin.txt ./plot
mv ./total_pow.txt ./plot

mv ./LogStatHier.txt ./plot
mv ./LogStatMultipath.txt ./plot
mv ./LogStatUnicast.txt ./plot

cd /home/bintiw/Desktop/plot
gnuplot delay.gp
gnuplot power.gp
gnuplot throughput.gp
gnuplot hop.gp 

epspdf delay.eps delay.pdf
epspdf power.eps power.pdf
epspdf throughput.eps throughput.pdf
epspdf hop.eps hop.pdf

rm -rf delay.eps
rm -rf power.eps
rm -rf hop.eps
rm -rf throughput.eps

ssmtp binayaktiwari@gmail.com < /home/bintiw/end
