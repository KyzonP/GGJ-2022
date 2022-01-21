extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_StartCycle_pressed():
	
	pass # Replace with function body.
	
func _add_Events():
	CYCLE.event1 = $slot1.dayEvent
	CYCLE.event2 = $slot2.dayEvent
	CYCLE.event3 = $slot3.dayEvent
	CYCLE.event4 = $slot4.dayEvent
	CYCLE.event5 = $slot5.dayEvent
	CYCLE.event6 = $slot6.dayEvent
	CYCLE.event7 = $slot7.dayEvent
	
	CYCLE.currentEvent = 1
	
	
