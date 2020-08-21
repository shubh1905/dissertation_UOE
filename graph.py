import matplotlib.pyplot as plt 
import scipy.sparse as smat
import numpy as np 

a=smat.load_npz("./Data/Wiki10-31K/Y.trn.npz")
b=smat.load_npz("./Data/Wiki10-31K/Y.tst.npz")
b=smat.vstack([a,b])
sum_both=b.sum(axis=0)
#print(sum_both)
id=np.argsort(sum_both,axis=1)
list_idx=id.tolist()
del id
del a
del b
#print(list_idx[0])
y=np.sort(sum_both,axis=1).tolist()
del sum_both
print(y[0])
print(len(list_idx[0]))
plt.plot(list_idx[0],y[0], 'ro')
plt.xlabel('entry a')
plt.ylabel('entry b')
plt.show()