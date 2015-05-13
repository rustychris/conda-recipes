import matplotlib
matplotlib.use('tkagg')
from octant import grid
import numpy as np
import matplotlib.pyplot as plt

x=np.linspace(0,15000,100)
y0=np.cos(2*np.pi*x/5000)
y=-(400+125*y0)

X=np.concatenate( [x,x[::-1]] )
Y=np.concatenate( [y,-y[::-1]] )

grid.BoundaryInteractor(x=X,y=Y)
plt.axis('equal')
plt.show()

