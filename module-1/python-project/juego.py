#funicón Enter Intruccion: Basicamente está creada para darte la bienvendia al juego y a las instrucciones.
def enter_instr():
    enter = ''
    while enter !=1:
        #Obliga a que solo pueda iniciar con 1
        enter = int(input("Presiona 1 para darte las instrucciones del juego Pare o None: "))
        if enter == 1:  
            instrucc()
        else:
            print(" ----------EY!!!----ES 1------------ ")
    
#Función para las instrucciones
def instrucc():
    print("""
    
                    _____________________Hoy jugaremos Pare o None________________)
                                            ¿ Como se Juega? \n

                             sencillo!!! \n
                 1. Tu competencia será la computadora.
                 2. se trata de que tanto tu como la pc daran un número del 1 al 5 Y la suma de ambos números
                    dará el ganador de la mano.
                                    ¿Como así?
                 3. escogeras antes de dar tu número si la suma será.. PARE o NONE.
                                     P = PARE... "Los números pares" 
                                     N = NONE... "Los Impares"
                                 Ok aclarado eso seguimos...
                 4. sí la suma da un valor "NONE" y tu escogiste ese valor, sumaran 10 ptos para ti, si no, se le sumará 
                    a tu rival virtual.
                 5. completaremos 3 Rondas, jugaremos 3 para ganar dos!!!
                    
                                           Vamos a jugar """)
    ent_conti() #llamo la funcion(enter_cont) para continuar con el juego

#Funcion para continuar en cada paso del juego
def ent_conti():
    PL = ''
    while PL !=1:
        #Obliga a que el jugador solo presione el numero 1
        PL = int(input("Presiona 1 para Continuar "))
        if PL == 1: 
            pass
        else:
            print("     ----------EY!!!----ES 1------------ ")

#función para solicitarle al jugador su apuesta(Pare o None)
def valorpn():
    val=''
    #obliga a que solo sea "P" ó "N", sin importar si es mayuscula o minuscula
    while  ((val != 'p')  &  (val != 'n')):
        val= input("""             Ingrese su apuesta... Pare o none (P ó N ) """)
        val = val.lower()
        if ((val == 'p') | (val == 'n')):
            pass
        else:
            print("    ----------EY!!!----ES P ó N------------ ")
             
    return val

#funcion para almacenar el valor que ingresará el jugador 
def valornm():
    n1=0
    #lo obliga a que solo sea del 1 al 5
    n1= int(input("             Ingrese un número del 1 al 5 :  "))
    if ((n1 == 1) | (n1 == 2) | (n1 == 3) | (n1 == 4) | ( n1 == 5) ):
        pass
    else:
        print("     ----------EY!!!----ES UN NÚMERO ENTRE 1 Y 5------------ ")
    return n1

#Desarrollo del juego
def juego():
    import random
    puntos_jugador = 0 #puntos que almacenará el jugador
    puntos_maq = 0 #puntos que almacenará la maquina
    ronda = 1
    while ((puntos_jugador!=20) & (puntos_maq !=20)):
        val= valorpn()
        njug = valornm()
        nmaq = random.randint(1,5) #Numero Aleatorio de la maquina
        resul= njug + nmaq #suma de los dos valores
        #se comienza a realizar las condiciones dependiendo de los valores que ingresó el jugador
        if val == 'p':
            if resul % 2 == 0:
                puntos_jugador = puntos_jugador + 10
                print("             Muy Bien has ganado esta mano llevas " + str(puntos_jugador)+ " puntos")
            else:
                puntos_maq = puntos_maq +10
                print("             La Maquina ganó esta mano lleva " +str(puntos_maq)+ " puntos")
        else:
            if resul % 2 != 0:
                puntos_jugador = puntos_jugador + 10
                print("             Muy Bien has ganado esta mano llevas " + str(puntos_jugador)+ " puntos")
            else:
                puntos_maq = puntos_maq +10
                print("             La Maquina ganó esta mano lleva " +str(puntos_maq)+ " puntos")
        if((puntos_jugador == 20) | (puntos_maq == 20)):
            print("             El juego ha terminado")
        else:
            ronda=ronda+1
            print("             Ronda Numero "+str(ronda))
    if puntos_jugador == 20:
        print("             ¡Felicidades has ganado!")
    else:
        print("             La maquina ha ganado")
    opt=int(input(""" Escribe 1 para Volver a jugar o 0 para salir
                    0.- Salir
                    1.- Volver a Jugar
                    """))
    if opt == 1:
        juego()
    else:
        exit()

#Inicio del juego
def playgame():
    enter_instr()
    juego()
    exit()

playgame()




