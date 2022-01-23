extends Node2D

export(Array, int) var events = [0,0,0,0,0,0,0,0]

export(int) var currentEvent = 0
export(int) var eventKey = 0

export var allEvents = {}

export (int) var randomSocial = 0

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	load_file()
	
	rng.randomize()
	randomSocial = rng.randi_range(1,7)
	print(randomSocial)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _nextEvent():
	currentEvent += 1
	eventKey = events[currentEvent-1]
	print("Test" + str(eventKey))
	if currentEvent < 8:
		get_tree().change_scene("res://Event/Event.tscn")
	elif currentEvent == 8:
		_newCycle()
		
func _endEvent():
	###Summary of previous event - added modifiers etc
	_nextEvent()
		
func _newCycle():
	currentEvent = 0
	get_tree().change_scene("res://Main/main.tscn")
	
	rng.randomize()
	randomSocial = rng.randi_range(1,7)
	print(randomSocial)
	
func load_file():
	#event Experience
	var file = File.new()
	file.open("res://eventExperience.json", file.READ)
	#var json_event = file["event" + str(CYCLE.eventKey)]
	var text = file.get_as_text()
	allEvents = parse_json(text)
	file.close()


	
	
	
