#! /usr/bin/python

#Multicast Destination from 0 to 2^64

import random
import glob 
import subprocess
import os
import numpy as np
import time
import math
import sys

os.chdir("/home/bintiw/Desktop/popnet/trace")

flit = 4
ary = 8
lamb = float(sys.argv[1])
pac_number = int(20000*lamb)
uc = 1
mc = 1-uc
uc_c = int (pac_number*uc)
mc_c = pac_number - uc_c
print uc_c
print mc_c
tot = 0 



def mc_dst(aa):
	#print "---------------"
	#print aa
	items = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	#samp_range = random.randint(2,5)
	#samp_range = random.randint(7,10)
	#samp_range = random.randint(11,16)
	#samp_range = random.randint(2,16)
	samp_range = 8
	
	#print samp_range
	global tot
	samp = random.sample(items,samp_range)
	samp.sort()
	dest = 0
	#print samp
	for i in samp:
		dest = dest + 2**(63-i)
	#dest =  random.randint(1,2**(ary*ary-1))	
	#print dest
	strr = str("{0:064b}".format(dest))
	#print strr
	s = list(strr)
	s[aa] = '0'
	tot = tot + s.count('1')
	strr = "".join(s)
	#print (int(strr,2))
	#print "----------------"
	return (int(strr,2))

    
	

def main():

	for i in range(ary):
		for j in range(ary):
			uc_time = random.sample(range(1,20000),uc_c)
			f = open("bench."+str(i)+"."+str(j),"w+")
			time = random.randint(0,int(1/lamb))
			for k in range(uc_c):
				des_i = random.randint(0,ary-1)
				des_j = random.randint(0,ary-1)
				if((i*ary+j) == des_i*ary+des_j):
					des_i = random.randint(0,ary-1)
					des_j = random.randint(0,ary-1)
				f.write(str(uc_time[k])+" "+str(i)+" "+str(j)+" "+str(des_i)+" "+str(des_j)+" "+str(flit)+" "+str(0)+" "+str(0)+" "+str(0)+"\n")
			f.close()

    
	
	for i in range(ary):
		for j in range(ary):
			mc_time = random.sample(range(1,20000),mc_c)
			f = open("bench."+str(i)+"."+str(j),"a+")
			time = random.randint(0,int(1/lamb))
			for k in range(mc_c):
				mc_all = str(mc_dst(i*ary+j))
				des_i = random.randint(0,ary-1)
				des_j = random.randint(0,ary-1)
				if((i*ary+j) == des_i*ary+des_j):
					des_i = random.randint(0,ary-1)
					des_j = random.randint(0,ary-1)
				flit_mc = 4
				f.write(str(mc_time[k])+" "+str(i)+" "+str(j)+" "+str(des_i)+" "+str(des_j)+" "+str(flit_mc)+" "+str(1)+" "+mc_all+" "+mc_all+"\n")
			f.close()
	
	read_files = glob.glob("bench.*.*")
	with open("bench_notsorted","wb") as outfile:
		for i in read_files:
			with open(i,"rb") as infile:
				outfile.write(infile.read())
	
	subprocess.call("sort bench_notsorted -h > bench",shell=True)
	subprocess.call("./sort.py",shell=True)

if __name__== "__main__":
  main()

  print tot+uc_c*64
  ##=print mc_dst(35)






"""
// bitset::set
#include <iostream>       // std::cout
#include <bitset>         // std::bitset

int main ()
{ long mc_dst = 36046389209464832;
  std::string binary_dst = std::bitset<64>(mc_dst).to_string();
 for(int i=0; i<binary_dst.size();i++)
    {  if(binary_dst[i] == '1')
     {
         std::cout<<i<<"\n";
         }
     }

  return 0;
}
"""