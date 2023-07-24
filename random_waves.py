
import numpy as np
import matplotlib.pyplot as plt
import random

def main():
    a = random.uniform(1,10)
    b = random.uniform(1,10)
    c = random.uniform(1,10)
    d = random.uniform(1,10)

    x = np.linspace(-10,10)
    y = function(x,a,b,c,d)

    plt.plot(x,y)
    plt.show()

    print(f'{a},{b},{c},{d}')

def function(x,a,b,c,d):
   
    y = a*np.sin(300*x) + c*np.cos(d*x)
    
    return y

#0.11*Sin(100*[t])+0.11*Cos(32*[t])
#0.11*Sin(100*[u])+0.11*Cos(32*[u])




if __name__ == '__main__':
    main()
