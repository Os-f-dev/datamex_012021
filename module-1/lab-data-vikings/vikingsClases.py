import random



# Soldier

class Soldier:
    pass
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health = self.health - damage
        pass
        # add code here


# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        self.name =  name
        self.health = health
        self.strength = strength


    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f'{self.name} has received {damage} points of damage'
        else:
            return  f'{self.name} has died in act of combat'

    def battleCry(self):
        return "Odin Owns You All!"

# Saxon



class Saxon(Soldier):
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f'A Saxon has received {damage} points of damage'
        else:
            return  'A Saxon has died in combat'



# BONUS: War

class War:
    pass
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self, viking):
        self.vikingArmy.append(viking)
        pass

    def addSaxon(self, saxon):
        self.saxonArmy.append(saxon)
        pass

    def vikingAttack(self):
        aleatorio = random.randint(0, len(self.saxonArmy)-1)
        atk = self.vikingArmy[aleatorio].attack()
        s = self.saxonArmy[aleatorio].receiveDamage(atk)
        if s == "A Saxon has died in combat":
            del self.saxonArmy[aleatorio]
        return s

    def saxonAttack(self):
        aleatorio = random.randint(0, len(self.vikingArmy)-1)
        atk = self.saxonArmy[aleatorio].attack()
        s = self.vikingArmy[aleatorio].receiveDamage(atk)
        if s.find("has died in act of combat") != -1:
            del self.vikingArmy[aleatorio]
        return s

    def showStatus(self):
        if len(self.saxonArmy) == 0:
            return 'Vikings have won the war of the century!'
        elif len(self.vikingArmy) == 0:
            return 'Saxons have fought for their lives and survived another day'
        else:
            return 'Vikings and Saxons are still in the thick of battle.'