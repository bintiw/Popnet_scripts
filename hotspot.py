#! /usr/bin/python
#This is a script to run a hotspot simulation for a 8x8 mesh network and plot the heat map
import subprocess
import os
import sys

os.chdir("/home/bintiw/Desktop/8x8/Hier/popnet/PowerReport")
file_time = str(sys.argv[1])

subprocess.call("cp ./PowerReport_"+file_time+" ../HotSpot/gcc.ptrace",shell=True)
os.chdir("/home/bintiw/Desktop/8x8/Hier/popnet/HotSpot")
subprocess.call("./hotspot -c hotspot.config -f ev6.flp -p gcc.ptrace -steady_file gcc.steady -model_type grid>/dev/null", shell= True)
subprocess.call("cp gcc.steady gcc.init",shell=True)
subprocess.call("./hotspot -c hotspot.config -init_file gcc.init -f ev6.flp -p gcc.ptrace -o gcc.ttrace -model_type grid -grid_steady_file gcc.grid.steady>/dev/null", shell= True)
subprocess.call("cp ./gcc.steady ../PowerReport/Temp_Report_"+file_time,shell=True)
subprocess.call("./grid_thermal_map.pl ev6.flp gcc.grid.steady > gcc.svg",shell=True)
subprocess.call("cp ./gcc.svg ../PowerReport/heatmap_"+file_time+".svg",shell=True)
subprocess.call("cp ./gcc.ttrace ../PowerReport/TTRACE_"+file_time,shell=True)

