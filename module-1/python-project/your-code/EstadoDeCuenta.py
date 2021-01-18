import random

intentos = 0

# dibujamos la pantalla

print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
print('•                                                 •')
print('•                                                 •')
print("•       Bienvenido a su estado de cuenta          •")
print('•                                                 •')
print('•                                                 •')
print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
print('')
print('')
print('')
print(input('*** PRESIONA ENTER PARA CONTINUAR ***'))
print('')
print('')
print(' ¿Cuál es tu usuario? ')
miNombre = input()

numero_cuenta = random.randint(1,1000)

print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
print('•                                                 •')
print('•                                                 •')
print("•            Bienvenido/a",miNombre,'               •')
print('•                                                 •')
print('•                                                 •')
print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
print('')
print('')
print('')
print(input('*** PRESIONA ENTER PARA CONTINUAR ***'))
print('')
print('')

#movimientos


while(True):
    print('')
    print(""" ¿Qué movimiento deseas realizar?
    1) Revisar mi Estado de Cuenta
    2) Retirar efectivo
    3) Salir""")
    
    opcion = input()
    
    
    if opcion == '1':
     print('')   
     print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
     print('•                                                 •')
     print('•                                                 •')
     print("•     Hola, tu saldo es de:", numero_cuenta,'                  •')
     print('•                                                 •')
     print('•                                                 •')
     print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
     print('')
    
    elif opcion == '2':
        
        n1 = float(input("¿Cuánto deseas retirar? $ "))     
        
        if numero_cuenta-n1 <0:
            print('Estas intentando sacar más dinero de lo que tienes')
            print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
            print('•                                                 •')
            print("•      No se pudo realizar la transacción         •")
            print('•                                                 •')
            print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
            print('')
        else:
            
  
            print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
            print('•                                                 •')
            print("•            Has retirado: ", n1,"                •")
            print("•     Y tu saldo es de: $$$", numero_cuenta-n1,'                 •')
            print('•                                                 •')
            print('•••••••••••••••••••••••••••••••••••••••••••••••••••')
            print('')
    
    
    elif opcion =='3':
        print("¡Hasta luego! Ha sido un placer ayudarte")
        break
    
    else:
        print("Comando desconocido, vuelve a intentarlo")
        print('')
        
