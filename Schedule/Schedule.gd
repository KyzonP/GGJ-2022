extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_StartCycle_pressed():
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
