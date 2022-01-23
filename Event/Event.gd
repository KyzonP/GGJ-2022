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
	var file = File.new()
	file.open("res://eventExperience.json", file.READ)
	#var json_event = file["event" + str(CYCLE.eventKey)]
	var text = file.get_as_text()
	allEvents = parse_json(text)
	
	#tests
	#var test = allEvents["event1"]
	#var test2 = test["background"]
	#print(test2)
	
	file.close()
	
func _loadData():
	var eventData = allEvents["event" + str(CYCLE.eventKey)]
	
	if "background" in eventData:
		var background = eventData["background"]
		$Background.texture = load(background)
	
	if "character" in eventData:
		var character = eventData["character"]
		$Character.texture = load(character)
	
	if "dialogue" in eventData:
		var dialogue = eventData["dialogue"]
		$Dialogue.text = dialogue

	if "effects" in eventData:
		var effects = eventData["effects"]
		
		if "morality" in effects:
			CTRL.moralityChange = effects["morality"]
		if "hunger" in effects:
			CTRL.hungerChange = effects["hunger"]
		if "social" in effects:
			CTRL.socialChange = effects["social"]
		if "energy" in effects:
			CTRL.energyChange = effects["energy"]
		if "money" in effects:
			CTRL.moneyChange = effects["money"]
		if "happiness" in effects:
			CTRL.happinessChange = effects["happiness"]

	pass
	
	
	
	
	
