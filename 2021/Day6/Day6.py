#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Sylvain
#
# Created:     06/12/2021
# Copyright:   (c) Sylvain 2021
# Licence:     <your licence>
#-------------------------------------------------------------------------------
import numpy as np
def expandplancton(nbJour,puzzleinput):

    for i in range(1,nbJour+1):
        #print('Jour',i)
        puzzleinput[0] = puzzleinput[0]-1
        Append8 = np.count_nonzero(puzzleinput[0]<0)
        puzzleinput[0][puzzleinput[0]<0] = 6
        puzzleinput[0] = np.append(puzzleinput[0],np.ones(Append8, dtype=np.byte)*8)
        #print(puzzleinput[0])
    return(np.count_nonzero(puzzleinput[0]+1))
    pass

if __name__ == '__main__':
    puzzleinput =  [np.array([1,1,3,5,1,3,2,1,5,3,1,4,4,4,1,1,1,3,1,4,3,1,2,2,2,4,1,1,5,5,4,3,1,1,1,1,1,1,3,4,1,2,2,5,1,3,5,1,3,2,5,2,2,4,1,1,1,4,3,3,3,1,1,1,1,3,1,3,3,4,4,1,1,5,4,2,2,5,4,5,2,5,1,4,2,1,5,5,5,4,3,1,1,4,1,1,3,1,3,4,1,1,2,4,2,1,1,2,3,1,1,1,4,1,3,5,5,5,5,1,2,2,1,3,1,2,5,1,4,4,5,5,4,1,1,3,3,1,5,1,1,4,1,3,3,2,4,2,4,1,5,5,1,2,5,1,5,4,3,1,1,1,5,4,1,1,4,1,2,3,1,3,5,1,1,1,2,4,5,5,5,4,1,4,1,4,1,1,1,1,1,5,2,1,1,1,1,2,3,1,4,5,5,2,4,1,5,1,3,1,4,1,1,1,4,2,3,2,3,1,5,2,1,1,4,2,1,1,5,1,4,1,1,5,5,4,3,5,1,4,3,4,4,5,1,1,1,2,1,1,2,1,1,3,2,4,5,3,5,1,2,2,2,5,1,2,5,3,5,1,1,4,5,2,1,4,1,5,2,1,1,2,5,4,1,3,5,3,1,1,3,1,4,4,2,2,4,3,1,1], dtype=np.byte),]
    unique, counts = np.unique(puzzleinput, return_counts=True)
    resultats = np.zeros(len(unique))
    resultats80jours = expandplancton(80,puzzleinput)

    for i in range(0,len(unique)):
        print(unique[i])
        #print([np.array([unique[i],])])
        resultats[i] = expandplancton(256,[np.array([unique[i],])])

    print('80 jours',resultats80jours)
    print('256 jours',np.sum(resultats*counts))

