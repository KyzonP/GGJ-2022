extends Sprite

var option1 = []
var option2 = []
var currentEvent = "social"

# Called when the node enters the scene tree for the first time.
func _ready():
	if CYCLE.randomSocial != 0:
		_socialEvent()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _socialEvent():
	if CYCLE.randomSocial != 0:
		_beep()
		
		###changing its text
		var socialData = CYCLE.allEvents["event" + str(CYCLE.randomSocial)]
		
		if "desc" in socialData:
			$TextBody.text = socialData["desc"]
			
		if "who_from" in socialData:
			$TextPerson.text = socialData["who_from"]
			
		if "option1" in socialData:
			option1 = socialData["option1"]
			if "name" in option1:
				$YesText.text = option1["name"]
		
		if "option2" in socialData:
			option2 = socialData["option2"]
			if "name" in option2:
				$NoText.text = option2["name"]
			
		currentEvent = "self"
	else:
		currentEvent = "self"
		_on_NoButton_pressed()

func _selfEvent():
	if CYCLE.randomSelf != 0:
		_beep()
		
		###changing its text
		var selfData = CYCLE.allEvents["event" + str(CYCLE.randomSelf+10)]
		
		if "desc" in selfData:
			$TextBody.text = selfData["desc"]
			
		if "who_from" in selfData:
			$TextPerson.text = selfData["who_from"]
			
		if "option1" in selfData:
			option1 = selfData["option1"]
			if "name" in option1:
				$YesText.text = option1["name"]
		
		if "option2" in selfData:
			option2 = selfData["option2"]
			if "name" in option2:
				$NoText.text = option2["name"]
			
		currentEvent = "family"
	else:
		currentEvent = "family"
		_on_NoButton_pressed()

func _familyEvent():
	if CYCLE.randomFamily != 0:
		_beep()
		
		###changing its text
		var familyData = CYCLE.allEvents["event" + str(CYCLE.randomFamily+20)]
		
		if "desc" in familyData:
			$TextBody.text = familyData["desc"]
			
		if "who_from" in familyData:
			$TextPerson.text = familyData["who_from"]
			
		if "option1" in familyData:
			option1 = familyData["option1"]
			if "name" in option1:
				$YesText.text = option1["name"]
		
		if "option2" in familyData:
			option2 = familyData["option2"]
			if "name" in option2:
				$NoText.text = option2["name"]
		
		currentEvent = "work"
	else:
		currentEvent = "work"
		_on_NoButton_pressed()

func _workEvent():
	if CYCLE.randomWork != 0:
		_beep()
		###changing its text
		var workData = CYCLE.allEvents["event" + str(CYCLE.randomWork+30)]
		
		if "desc" in workData:
			$TextBody.text = workData["desc"]
			
		if "who_from" in workData:
			$TextPerson.text = workData["who_from"]
			
		if "option1" in workData:
			option1 = workData["option1"]
			if "name" in option1:
				$YesText.text = option1["name"]
		
		if "option2" in workData:
			option2 = workData["option2"]
			if "name" in option2:
				$NoText.text = option2["name"]
		
		currentEvent = "social"
		
		
		###CONTROL 
		if CYCLE.randomWork == 5:
			CTRL.employed = false
	else:
		currentEvent = "social"
		_on_NoButton_pressed()

func _on_YesButton_pressed():
	###TRACKERS FOR STUFF:
	if CYCLE.randomWork == 5 + 30:
		CTRL.employed = false
	
	
	
	if currentEvent == "social":
		get_parent().get_node("Schedule")._spawnRandWork()
		self.visible = false
	elif currentEvent == "self":
		get_parent().get_node("Schedule")._spawnRandSocial()
		_selfEvent()
	elif currentEvent == "family":
		get_parent().get_node("Schedule")._spawnRandSelf()
		_familyEvent()
	elif currentEvent == "work":
		get_parent().get_node("Schedule")._spawnRandFamily()
		_workEvent()
	pass # Replace with function body.
	


func _on_NoButton_pressed():
	if currentEvent == "social":
		self.visible = false
	elif currentEvent == "self":
		_selfEvent()
	elif currentEvent == "family":
		_familyEvent()
	elif currentEvent == "work":
		_workEvent()
	pass # Replace with function body.

func _beep():
	SOUND.get_node("Click").play()
