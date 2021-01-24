import numpy as np
np.__version__
np.show_config()

a = np.random.random((2,3,5))
#Utilice este, pero dice de cuantas formas puedes encontrar, creo que se refiere a si lo hago con
#randint(distribucion discreto) o randn(distribucion normal)

print(a)

b= np.full((5,2,3),1)

print(b)

#a y b no son del mismo tamaño.
a.shape==b.shape

#No se pueden agregar a y b ya que no tienen el mismo shape o tamaño.

c = b.reshape(a.shape)
c.shape

d=a+c
print(d)
#Ahora si se pueden sumar ya que tienen el mismo tamaño o shape.

print(a,'\n\n',d)
#ya que en d se sumaron a y c se tiene los mismos decimales mas 1 entero.

e=a*c
print(e)

#Si son iguales a y e ya que todo numero multiplicado por uno es el mismo numero.

d_max=d.max()
d_min=d.min()
d_mean=d.mean()

f=np.empty((2,3,5),dtype=int)

pri=0
seg=0
ter=0
for i in d:
    for v in i:
        for dat in v:
            if (dat > d_min) and (dat < d_mean):
                f[pri,seg,ter]=25
            elif (dat > d_mean) and (dat < d_max):
                f[pri,seg,ter]=75
            elif (dat == d_mean):
                f[pri,seg,ter]=50
            elif (dat == d_min) :
                f[pri,seg,ter]=0
            elif (dat == d_max):
                f[pri,seg,ter]=100
            
            ter+=1
        ter=0
        seg+=1
    seg=0
    pri+=1
print(d)
print(f)

f2=np.empty((2,3,5),dtype=str)
pri=0
seg=0
ter=0
for i in d:
    for v in i:
        for dat in v:
            if (dat > d_min) and (dat < d_mean):
                f2[pri,seg,ter]='B'
            elif (dat > d_mean) and (dat < d_max):
                f2[pri,seg,ter]='D'
            elif (dat == d_mean):
                f2[pri,seg,ter]='C'
            elif (dat == d_min) :
                f2[pri,seg,ter]='A'
            elif (dat == d_max):
                f2[pri,seg,ter]='E'
            
            ter+=1
        ter=0
        seg+=1
    seg=0
    pri+=1
print(f2)
