import linecache

import pandas as pd
import numpy as np
import re
import os
import time
import subprocess

class PreProcess():
    def __init__(self,*args):
        super(PreProcess, self).__init__(*args)
        self.runmacfileEx = ".mac"
        self.eventactionpath = '/Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventAction.cc'
        self.nuclidedict = {'Cs137': '55 137', 'Co60': '27 60', 'Eu152': '63 152', 'Am241': '95 241', 'Ba133': '56 133', 'Na22': '11 22','Ra226': '88 226','Th232': '90 232','U235': '92 235'}

    def actionProcess(self,sourcename):
        ion  = self.nuclidedict[sourcename]
        runmacpath = '/Users/roy/Documents/data?/DatafromSim/' + sourcename + '/runmac/'
        for distence in range(25, 36):
            for num in range(1000000, 20000001, 1000000):
                strnum = str(num)
                strdis = str(distence)
                name = sourcename + '-' + strdis + '-' + strnum
                runmacname = name + self.runmacfileEx
                runmac = open(runmacpath + runmacname, 'w')
                distencenum = distence + 4.45
                strdisnum = str(distencenum)
                content = '/run/initialize\n' \
                          '/gps/particle ion\n' \
                          '/gps/ion ' + ion + '\n' \
                          '/gps/direction -1 0 0\n' \
                          '/gps/pos/centre ' + strdisnum + ' 0 0 cm\n' \
                           '/tracking/verbose 0\n' \
                           '/rdecay01/event/printModulo 100000\n' \
                           '/run/beamOn ' + strnum
                runmac.write(content)
                eventaction = open(self.eventactionpath, 'r+')
                theline = eventaction.readlines()
                theline[87] = ' FILE *opf1 = fopen(\"/Users/roy/Documents/data?/DatafromSim/' + sourcename + '/' + name + '.dat\",\"a\");\n'
                eventaction_new = open(self.eventactionpath, 'w+')
                eventaction_new.writelines(theline)
                eventaction.close()
                eventaction_new.close()
                os.system('make -j8')
                runmac = './rdecay01 ' + runmacpath + sourcename + '-' + strdis + '-' + strnum + self.runmacfileEx
                os.system('cd /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build\nsource /Users/roy/Downloads/geant4.10.07.p01/install/bin/geant4.sh\n' + runmac)

if __name__ == '__main__':
    preprocess = PreProcess()
    nuclidelist = ['Ra226','U235','Th232']#'Cs137','Co60','Eu152','Na22','Ba133','Am241',
    for i in range(len(nuclidelist)):
        preprocess.actionProcess(nuclidelist[i])

