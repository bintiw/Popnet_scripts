#! /usr/bin/python

import os
import sys
os.chdir("/home/bintiw/Desktop")

def average(listt):
	sum = 0
	for i in listt:
		sum = sum + i
	return sum/len(listt)
		
def hier():
	total_hop = []
	total_fin = []
	ave_del = []
	total_pow = []
	file = open("Hier.txt","r")
	for line in file:
		total_hop.append(float(line.split()[0]))
		total_fin.append(float(line.split()[1]))
		ave_del.append(float(line.split()[2]))
		total_pow.append(float(line.split()[3]))

	f= open("total_hop.txt","a+")
	f.write(str(average(total_hop))+"\t")
	f.close()

	f= open("total_fin.txt","a+")
	f.write(str(average(total_fin))+"\t")
	f.close()

	f= open("ave_del.txt","a+")
	f.write(str(average(ave_del))+"\t")
	f.close()

	f= open("total_pow.txt","a+")
	f.write(str(average(total_pow))+"\t")
	f.close()


def multipath():
	total_hop = []
	total_fin = []
	ave_del = []
	total_pow = []
	file = open("Multipath.txt","r")
	for line in file:
		total_hop.append(float(line.split()[0]))
		total_fin.append(float(line.split()[1]))
		ave_del.append(float(line.split()[2]))
		total_pow.append(float(line.split()[3]))
	
	f= open("total_hop.txt","a+")
	f.write(str(average(total_hop))+"\t")
	f.close()

	f= open("total_fin.txt","a+")
	f.write(str(average(total_fin))+"\t")
	f.close()

	f= open("ave_del.txt","a+")
	f.write(str(average(ave_del))+"\t")
	f.close()

	f= open("total_pow.txt","a+")
	f.write(str(average(total_pow))+"\t")
	f.close()


def unicast():
	total_hop = []
	total_fin = []
	ave_del = []
	total_pow = []
	file = open("Unicast.txt","r")
	for line in file:
		total_hop.append(float(line.split()[0]))
		total_fin.append(float(line.split()[1]))
		ave_del.append(float(line.split()[2]))
		total_pow.append(float(line.split()[3]))

	f= open("total_hop.txt","a+")
	f.write(str(average(total_hop))+"\n")
	f.close()

	f= open("total_fin.txt","a+")
	f.write(str(average(total_fin))+"\n")
	f.close()

	f= open("ave_del.txt","a+")
	f.write(str(average(ave_del))+"\n")
	f.close()

	f= open("total_pow.txt","a+")
	f.write(str(average(total_pow))+"\n")
	f.close()

"""
def multipath():
	sum = 0
	file = open("Multipath.txt","r")
	for line in file:
		sum = sum + float(line)
	print sum/a
	f= open("RESULT.txt","a+")
	f.write(str(sum/a)+"\t")
	f.close()

def unicast():
	sum = 0
	file = open("Unicast.txt","r")
	for line in file:
		sum = sum + float(line)
	print sum/a
	f= open("RESULT.txt","a+")
	f.write(str(sum/a)+"\n")
	f.close()
"""
def main():
	f= open("total_hop.txt","a+")
	f.write(str(float(sys.argv[1]))+"\t")
	f.close()

	f= open("total_fin.txt","a+")
	f.write(str(float(sys.argv[1]))+"\t")
	f.close()

	f= open("ave_del.txt","a+")
	f.write(str(float(sys.argv[1]))+"\t")
	f.close()

	f= open("total_pow.txt","a+")
	f.write(str(float(sys.argv[1]))+"\t")
	f.close()
	
	hier()
	multipath()
	unicast()
	
if __name__== "__main__":
  main()

	