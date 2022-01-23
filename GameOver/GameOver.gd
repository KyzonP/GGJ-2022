extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	SOUND.get_node("Background").stop()
	SOUND.get_node("Background2").play()
	
	$Hunger.text = "Final Hunger Score: " + str(CTRL.hunger) + "/100"
	$Social.text = "Final Social Score: " + str(CTRL.social) + "/100"
	$Energy.text = "Final Energy Score: " + str(CTRL.energy) + "/100"
	$Money.text = "Final Money Score: " + str(CTRL.money) + "/100"
	$Happiness.text = "Final Happiness Score: " + str(CTRL.happiness) + "/100"
	
	if CTRL.hunger > 99:
		$Method.text = "Your blob got too hungry. Keep your blob fed!"
	elif CTRL.social < 1:
		$Method.text = "Your blob got too lonely! Keep him social!"
	elif CTRL.energy < 1:
		$Method.text = "Your blob got too tired! Keep them active!"
	elif CTRL.money < 1:
		$Method.text = "Your blob is broke! Mange their money better!"
	elif CTRL.happiness <1:
		$Method.text = "Your blob is depressed! Do things that make them happy!"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
