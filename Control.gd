extends Node

export (int) var morality = 50
export (int) var hunger = 50
export (int) var social = 50
export (int) var energy = 50
export (int) var money = 50
export (int) var happiness = 50
export (bool) var infected = false 

export (int) var moralityChange = 0
export (int) var hungerChange = 0
export (int) var socialChange = 0
export (int) var energyChange = 0
export (int) var moneyChange = 0
export (int) var happinessChange = 0

export (int) var moralityMod = 0
export (int) var hungerMod = 0
export (int) var socialMod = 0
export (int) var energyMod = 0
export (int) var moneyMod = 0
export (int) var happinessMod = 0


##trackers for different things
export (bool) var hasDog = false
export (bool) var employed = true

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _resetChanges():
	moralityChange = 0
	hungerChange = 0
	socialChange = 0
	energyChange = 0
	moneyChange = 0
	happinessChange = 0
	
func _implementChanges():
	morality += moralityChange
	hunger += hungerChange
	social += socialChange
	energy += energyChange
	money += moneyChange
	happiness += happinessChange
	
	if morality > 100:
		morality = 100
	elif morality < 0:
		morality = 0
		
	if hunger > 100:
		hunger = 10
	elif hunger < 0:
		hunger = 0
		
	if social > 100:
		social = 100
	elif social < 0:
		social = 0
		
	if energy > 100:
		energy = 100
	elif energy < 0:
		energy = 0
		
	if money > 100:
		money = 100
	elif money < 0:
		money = 0
		
	if happiness > 100:
		happiness = 100
	elif happiness < 0:
		happiness = 0
