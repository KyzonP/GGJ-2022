extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var PrevData = CYCLE.allEvents["event" + str(CYCLE.eventKey)]
	if "subtitle" in PrevData:
		$Prev.text = "Effects of Event : " + PrevData["subtitle"]
	
	var currentEvent = CYCLE.currentEvent
	currentEvent += 1
	var nextEvent = CYCLE.events[currentEvent]
	
	var NextData = CYCLE.allEvents["event" + str(nextEvent)]
	if "subtitle" in NextData:
		$Next.text = "Next Event: " + NextData["subtitle"]
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if CTRL.hungerChange >= 0:
		$Hunger.text = "Hunger: " + str(CTRL.hunger) + "/100 | + " + str(CTRL.hungerChange) 
	else:
		$Hunger.text = "Hunger: " + str(CTRL.hunger) + "/100 | " + str(CTRL.hungerChange) 
		
	if CTRL.socialChange >= 0:
		$Social.text = "Social: " + str(CTRL.social) + "/100 | + " + str(CTRL.socialChange) 
	else:
		$Social.text = "Social: " + str(CTRL.social) + "/100 | " + str(CTRL.socialChange) 
		
	if CTRL.energyChange >= 0:
		$Energy.text = "Energy: " + str(CTRL.energy) + "/100 | + " + str(CTRL.energyChange) 
	else:
		$Energy.text = "Energy: " + str(CTRL.energy) + "/100 | " + str(CTRL.energyChange) 
		
	if CTRL.moneyChange >= 0:
		$Money.text = "Money: " + str(CTRL.money) + "/100 | + " + str(CTRL.moneyChange) 
	else:
		$Money.text = "Money: " + str(CTRL.money) + "/100 | " + str(CTRL.moneyChange) 

	if CTRL.happinessChange >= 0:
		$Happiness.text = "Happiness: " + str(CTRL.happiness) + "/100 | + " + str(CTRL.happinessChange) 
	else:
		$Happiness.text = "Happiness: " + str(CTRL.happiness) + "/100 | " + str(CTRL.happinessChange) 

	pass


func _on_Button_pressed():
	CTRL._implementChanges()
	CTRL._resetChanges()	
	
	CYCLE._nextEvent()
	pass # Replace with function body.
