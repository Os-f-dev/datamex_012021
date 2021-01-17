# -*- coding: utf-8 -*-
"""
Created on Sat Jan 16 19:44:17 2021

@author: cyn_n
"""

rounds_to_win=0
cpu_score=0
player_score=0
import random
gestures = ['tails','heads']
n_rounds=[]

def ran(gestures):
    u=random.choice(gestures)
    return u
""" para los jugadores"""
def rann(input):
    un = str( input("Choose tails or heads:") )
    while (un  not in  gestures)==True:
          un = str( input("Choose heads or tails:") )
    return( un)

def winner(cpu_score,player_score):
    u = 0;
    if  (cpu_score)==(player_score):
         u = 0
         print("Tie")
    elif (cpu_score)>(player_score):
         u = 1
         print("El gandor absoluto es la computadora")
    else:
         u = 2
         print("El ganador absoluto es el jugador")
        
    return

"""generan las elecciones"""
def chus(input,cpu_score,player_score,ran):
    return (player_score,cpu_score)

def rounds(input):
    rounds_to_win =int( input("How many round do you want to play:") )
   # while (rounds_to_win % 2) == 0:<
     #  rounds_to_win =int( input("How many round do you want to play:") )
    return rounds_to_win

rounds_to_win=rounds(input)
rounds_plau1 = 0
cpu_score=0
player_score=0
while cpu_score < 5 and player_score < 5 and  rounds_plau1 <= rounds_to_win :
      rounds_plau1 += 1    
      #cpu_score, player_score = chus(input,cpu_score,player_score,ran)
      comput_choice = ran(gestures)
      real_choice = ran(gestures)

      player_choice =str( input("Player,choose tails or heads:") )
      while (player_choice  not in  gestures)==True:
               player_choice = str( input(" Player choose tails or heads") )
        
      print ('La moneda cayo: %s \n La computadora eligio : %s\n El jugador eligio : %s' % (real_choice,comput_choice,player_choice))      
         
            
         
      if comput_choice == "tails" and real_choice =="tails"  and player_choice == "tails":
         print("Ambos son ganadoras en esta partida")
         cpu_score += 1
         player_score +=1
      elif comput_choice == "heads" and real_choice =="heads" and player_choice == "heads":
           print("Ambos son ganadoras en esta partida")
           cpu_score +=1 
           player_score +=1
      elif player_choice == "tails" and real_choice =="tails" :
           print("El jugador   es el ganador en esta partida")
           player_score +=1                     
      elif player_choice == "heads" and real_choice =="heads" :
           print("El jugador  es el ganador en esta partida")
           player_score +=1

      elif comput_choice == "tails" and real_choice =="tails" :
           print("La computadora es el ganador en esta partida")
           cpu_score +=1                     
      elif comput_choice == "heads" and real_choice =="heads" :
           print("la computadora es el ganador en esta partida")
           cpu_score +=1      
          
      print('Puntaje acumulado  de la computadora: %s      Puntaje acumulado del jugador: %s' %(cpu_score, player_score)) 
    
        
print(winner(cpu_score,player_score))
     