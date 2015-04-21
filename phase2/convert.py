# -*- coding: utf-8 -*-
"""
Created on Thu Apr  2 16:25:34 2015

@author: mohit
"""
import struct
import os

fpath = 'tmp/compress.txt'
fi = open(fpath,'rb')
ofi = open('tmp/test.mp3','wb')
x = fi.read()
x = x[0:-1]
L = len(x)
letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p']
for i in range(0,L,2):
    l1 = x[i]
    l2 = x[i+1]
    n1 = letters.index(l1)
    n2 = letters.index(l2)
    n = 16*n2 + n1
    ofi.write(struct.pack('B',n))
    #print n

fi.close()
ofi.close()
