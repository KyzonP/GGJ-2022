extends Node2D


#export (int) var event1 = 0
#export (int) var event2 = 0
#export (int) var event3 = 0
#export (int) var event4 = 0
#export (int) var event5 = 0
#export (int) var event6 = 0
#export (int) var event7 = 0

export(Array, int) var events = [10,0,0,0,0,0,0]

export(int) var currentEvent = 0
export(int) var eventKey = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _nextEvent():
	currentEvent += 1
	eventKey = events[currentEvent-1]
	print("Test" + str(eventKey))
	if currentEvent < 2:
		get_tree().change_scene("res://Event/Event.tscn")
	else:
		_newCycle()
		
func _endEvent():
	###Summary of previous event - added modifiers etc
	pass
		
func _newCycle():
	currentEvent = 0
	get_tree().change_scene("res://Schedule/Schedule.tscm")
	pass
