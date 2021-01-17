
# Soldier


class Soldier:
    
   def __init__(self,health,strength):
       self.health = health
       self.strength = strength
        
   def attack(self):
           
         return  self.strength
        
   def receiveDamage(self,damage):
          self.health= self.health - damage
# Viking


class Viking(Soldier):
      
     
   def __init__(self,name,health,strength):
       self.name =name
       self.health= health
       self.strength = strength
        #   Soldier.__init__(self)
     
      #  Soldier.__init__(self)
       # def attack(self):
        # return   print( self.strength)
       
   def receiveDamage(self,damage):
# Saxon     
        self.health=  self.health - damage
        if  self.health > 0:
            return'%s has received %u points of damage' %(self.name,damage)
        else:
            return'%s has died in act of combat' %(self.name) 
       
   def battleCry(self):
    return 'Odin Owns You All!'
         


class Saxon(Soldier):
   def __init__(self,health,strength):
        
        
        self.health=health
        self.strength=strength
        
   def receiveDamage(self,damage):
       self.health = self.health - damage
       if self.health > 0:
          return'A Saxon has received %u points of damage' %(damage)
       else:
               return'A Saxon has died in combat'  
            
          
    

# War


class War:
    pass
