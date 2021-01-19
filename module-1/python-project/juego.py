
def enter_instr():
    enter = ''
    while enter !=1:
        enter = int(input("Presiona 1 para darte las instrucciones del juego Pare o None: "))
        if enter == 1:  
            instrucc()
        else:
            print(" ----------EY!!!----ES 1------------ ")
    

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
    ent_conti()


def ent_conti():
    PL = ''
    while PL !=1:
        PL = int(input("Presiona 1 para Continuar "))
        if PL == 1: 
            pass
        else:
            print("     ----------EY!!!----ES 1------------ ")


def valorpn():
    val=''
    while  ((val != 'p')  &  (val != 'n')):
        val= input("""             Ingrese su apuesta... Pare o none (P ó N ) """)
        val = val.lower()
        if ((val == 'p') | (val == 'n')):
            pass
        else:
            print("    ----------EY!!!----ES P ó N------------ ")
             
    return val


def valornm():
    n1=0
    n1= int(input("             Ingrese un número del 1 al 5 :  "))
    if ((n1 == 1) | (n1 == 2) | (n1 == 3) | (n1 == 4) | ( n1 == 5) ):
        pass
    else:
        print("     ----------EY!!!----ES UN NÚMERO ENTRE 1 Y 5------------ ")
    return n1


def juego():
    import random
    puntos_jugador = 0
    puntos_maq = 0
    ronda = 1
    while ((puntos_jugador!=20) & (puntos_maq !=20)):
        val= valorpn()
        njug = valornm()
        nmaq = random.randint(1,5)
        resul= njug + nmaq
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

def playgame():
    enter_instr()
    juego()
    exit()

playgame()




