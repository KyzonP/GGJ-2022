extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var card_path = "res://Schedule/ScheduleCard.tscn"
	var card = load(card_path).instance()
	card.dayEvent = 1
	card.global_position = Vector2(-100,0)
	add_child(card)
	pass # Replace with function body.

func _on_StartCycle_pressed():
	#make sure all slots have been filled
	if $slot1.dayEvent and $slot2.dayEvent and $slot3.dayEvent and $slot4.dayEvent and $slot5.dayEvent and $slot6.dayEvent and $slot7.dayEvent != 0:
		_add_Events()
	
		CYCLE._nextEvent()
	pass # Replace with function body.
	
func _add_Events():
	CYCLE.events[0] = $slot1.dayEvent
	CYCLE.events[1] = $slot2.dayEvent
	CYCLE.events[2] = $slot3.dayEvent
	CYCLE.events[3] = $slot4.dayEvent
	CYCLE.events[4] = $slot5.dayEvent
	CYCLE.events[5] = $slot6.dayEvent
	CYCLE.events[6] = $slot7.dayEvent
	
func _add_Experience():
	pass
	
#var crop_path = "res://Crops/Oat.tscn"
#var crop = load(crop_path).instance()
