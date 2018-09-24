#! /usr/bin/python
#This is a utility function to generate a 8x8 mesh trace file 
import subprocess
import os

os.chdir("/home/bintiw/Desktop/popnet/trace")
ary = 8 #Mesh dimension

subprocess.call("sort bench_notsorted -h > bench",shell=True)
f = open("bench","a+")
f.close()

for i in range(ary):
		for j in range(ary):
			subprocess.call("touch temp",shell=True)
			subprocess.call("sort bench."+str(i)+"."+str(j)+" -h > temp",shell=True)
			subprocess.call("rm -rf bench."+str(i)+"."+str(j),shell=True)
			subprocess.call("mv temp bench."+str(i)+"."+str(j),shell=True)
			f = open("bench."+str(i)+"."+str(j),"a+")
			f.close()
	        
