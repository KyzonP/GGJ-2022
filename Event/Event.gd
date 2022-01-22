extends Node2D

var default_data ={
	"background": "blank",
	"character": "blank",
	"dialogue": "blank",
	
	"morality": 0,
	"hunger": 0,
	"social": 0,
	"energy": 0,
	"money": 0,
	"happiness": 0,
	"infected": "false"
}

var allEvents = { }


# Called when the node enters the scene tree for the first time.
func _ready():
	load_file()
	
	_loadData()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Current event: " + str(CYCLE.eventKey)


func _on_Button_pressed():
	CYCLE._endEvent()
	pass # Replace with function body.
	
func load_file():
	#var file = File.new()
	#file.open("res://eventExperience.json",File.READ)
	#var json_which_event = file["event" + str(CYCLE.eventKey)]
	
	#background = json_which_event["background"]
	
	#print(background)
	
	var file = File.new()
	file.open("res://eventExperience.json", file.READ)
	#var json_event = file["event" + str(CYCLE.eventKey)]
	var text = file.get_as_text()
	allEvents = parse_json(text)
	
	var test = allEvents["event1"]
	var test2 = test["background"]
	
	print(test2)
	file.close()
	
func _loadData():
	var eventData = allEvents["event" + str(CYCLE.eventKey)]
	
	var background = eventData["background"]
	$Background.texture = load(background)
	
	var character = eventData["character"]
	$Character.texture = load(character)
	
	var dialogue = eventData["dialogue"]
	$Dialogue.text = dialogue
	pass
	
	
	
	
	
