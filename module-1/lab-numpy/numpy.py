#1
import numpy as np

#2
print(np.__version__)
#print(np.show_config())

#3
a = np.random.random((2,3,5))

#4
print(a)

#5
b = np.ones((5,3,2))
#Modifiqué 

#6
print(b)

#7
np.array_equal(a,b)

#8
#No se puede agregar ya que la estructura de los arrays son distintas. 5 cajas, 2 filas y 3 columnas vs 2 cajas 3 filas y 5 columnas

#9
#Modifique el array b, ya que al momento de aplicar transpose cambia el primero elemento por el ultimo, para que de esta manera coincidieran
c = np.transpose(b)
c

#10
d = np.concatenate((a, c), axis=0)

#11
print(a)
print(d)

#12
e = np.multiply(a,c)
print(e)

#13
#13 es igual porque se está multiplicando por 1

#14
d_max= np.max(e)
d_min = np.min(e)
d_mean = np.mean(e)
print("Valos Max: " +str(d_max)+ "  Valor Min: " + str(d_min)+ "  Valor Mean: " + str(d_mean))

#15
f = np.empty([2,3,5])

#16

for i in range(d.shape[ 0 ]):
    for j in range(d.shape[ 1 ]):
        for k in range( d.shape[ 2 ]):
            if ((d[i,j,k]> d_min) and (d[i,j,k] < d_mean)):  
                f[i,j,k] = 25
            if ((d[i,j,k] > d_mean) and (d[i,j,k]< d_max)):
                f[i,j,k] = 75
            if (d[i,j,k] == d_mean):
                f[i,j,k] = 50
            if  (d[i,j,k] ==  d_min):
                f[i,j,k] = 0
            if (d[i,j,k]==  d_max):
                f[i,j,k] = 100

#17
print(d)
print(f)