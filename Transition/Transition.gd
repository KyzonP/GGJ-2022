extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Hunger.text = "Hunger: " + str(CTRL.hunger) + "/100 | + " + str(CTRL.hungerChange) 
	$Social.text = "Social: " + str(CTRL.social) + "/100 | + " + str(CTRL.socialChange) 
	$Energy.text = "Energy: " + str(CTRL.energy) + "/100 | + " + str(CTRL.energyChange) 
	$Money.text = "Money: " + str(CTRL.money) + "/100 | + " + str(CTRL.moneyChange) 
	$Happiness.text = "Happiness: " + str(CTRL.happiness) + "/100 | + " + str(CTRL.happinessChange) 

	pass


func _on_Button_pressed():
	CTRL._implementChanges()
	CTRL._resetChanges()	
	
	CYCLE._nextEvent()
	pass # Replace with function body.
