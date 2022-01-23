extends Area2D

var card_path = "res://Schedule/ScheduleCard.tscn"
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	_dailyTasks()
	
	
	pass


func _on_StartCycle_pressed():
	#make sure all slots have been filled
	if $slot1.dayEvent and $slot2.dayEvent and $slot3.dayEvent and $slot4.dayEvent and $slot5.dayEvent and $slot6.dayEvent and $slot7.dayEvent != 0:
		_add_Events()
	
		CYCLE._nextEvent()
	
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
	
func _dailyTasks():
	#Only spawn jobs if employed - otherwise spawn the 'get job' one
	if CTRL.employed == true:
		_loadCard(37, -413, -140)
		_loadCard(37, -413, -76)
	else:
		_loadCard(35, -413, -140)
		
	#family
	_loadCard(22, -349, -140)
	_loadCard(22, -349, -76)
		
	#social
	_loadCard(5, -285, -140)
	_loadCard(5, -285, -76)
	
	#self
	_loadCard(13, -221, -140)
	_loadCard(13, -221, -76)

func _loadCard(event, xPos, yPos):
	var card = load(card_path).instance()
	card.dayEvent = event
	
	rng.randomize()
	card.global_position = Vector2(xPos, yPos)
	
	###changing its text
	var eventData = CYCLE.allEvents["event" + str(event)]
	
	if "subtitle" in eventData:
		var subtitle = eventData["subtitle"]
		card.cardType = subtitle
	
	add_child(card)
	print("Created - " + str(event))
	
func _additionalTasks():
	_loadCard(CYCLE.randomSocial, -285, 52)
	pass
	
func _spawnRandSocial():
	_loadCard(CYCLE.randomSocial, -285, 52)

func _spawnRandSelf():
	_loadCard(CYCLE.randomSelf+10, -221, 52)
	
func _spawnRandFamily():
	_loadCard(CYCLE.randomFamily+20, -349, 52)
	
func _spawnRandWork():
	_loadCard(CYCLE.randomWork+30, -413, 52)
