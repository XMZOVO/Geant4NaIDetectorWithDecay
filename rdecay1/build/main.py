import linecache

import pandas as pd
import numpy as np
import re
import os
import time
import subprocess

sourcename = 'Cs137'
runmacpath = '/Users/roy/Documents/data?/DatafromSim/' + sourcename + '/runmac/'
runmacfileEx = ".mac"
eventactionpath = '/Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventAction.cc'

if sourcename == 'Cs137':
    ion = '55 137'
elif sourcename == 'Co60':
    ion = '27 60'
elif sourcename == 'Eu152':
    ion = '63 152'
elif sourcename == 'Am241':
    ion = '95 241'
elif sourcename == 'Ba133':
    ion = '56 133'
elif sourcename == 'Na22':
    ion = '11 22'
elif sourcename == 'Ra226':
    ion = '88 226'
elif sourcename == 'Th232':
    ion = '90 232'
elif sourcename == 'U235':
    ion = '92 235'

for distence in range(25,36):
    for num in range(1000000,20000001,1000000):
        strnum = str(num)
        strdis = str(distence)
        name = sourcename + '-' + strdis + '-' + strnum
        runmacname = name + runmacfileEx
        runmac = open(runmacpath + runmacname,'w')
        distencenum = distence + 4.45
        strdisnum = str(distencenum)
        content = '/run/initialize\n' \
                  '/gps/particle ion\n' \
                  '/gps/ion ' + ion + '\n' \
                  '/gps/direction -1 0 0\n' \
                  '/gps/pos/centre ' + strdisnum +' 0 0 cm\n' \
                  '/tracking/verbose 0\n' \
                  '/run/beamOn ' + strnum
        runmac.write(content)
        eventaction = open(eventactionpath,'r+')
        theline = eventaction.readlines()
        theline[87] = ' FILE *opf1 = fopen(\"/Users/roy/Documents/data?/DatafromSim/' + sourcename + '/' + name + '.dat\",\"a\");\n'
        eventaction_new = open(eventactionpath, 'w+')
        eventaction_new.writelines(theline)
        eventaction.close()
        eventaction_new.close()
        os.system('make -j8')
        runmac = './rdecay01 ' + runmacpath + sourcename + '-' + strdis + '-' + strnum + runmacfileEx
        os.system('cd /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build\nsource /Users/roy/Downloads/geant4.10.07.p01/install/bin/geant4.sh\n' + runmac)
