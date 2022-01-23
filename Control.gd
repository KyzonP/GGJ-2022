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
