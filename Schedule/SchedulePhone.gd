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
	###changing its text
	var socialData = CYCLE.allEvents["soc" + str(CYCLE.randomSocial)]
	
	if "desc" in socialData:
		$TextBody.text = socialData["desc"]
		
	if "who_from" in socialData:
		$TextPerson.text = socialData["who_from"]
		
	if "option1" in socialData:
		option1 = socialData["option1"]
		if "name" in option1:
			$YesButton.text = option1["name"]
	
	if "option2" in socialData:
		option2 = socialData["option2"]
		if "name" in option2:
			$NoButton.text = option2["name"]
		
	currentEvent = "self"
	pass

func _selfEvent():
	###changing its text
	var selfData = CYCLE.allEvents["sel" + str(CYCLE.randomSelf+10)]
	
	if "desc" in selfData:
		$TextBody.text = selfData["desc"]
		
	if "who_from" in selfData:
		$TextPerson.text = selfData["who_from"]
		
	if "option1" in selfData:
		option1 = selfData["option1"]
		if "name" in option1:
			$YesButton.text = option1["name"]
	
	if "option2" in selfData:
		option2 = selfData["option2"]
		if "name" in option2:
			$NoButton.text = option2["name"]
		
	currentEvent = "family"
	pass

func _familyEvent():
	###changing its text
	var familyData = CYCLE.allEvents["fam" + str(CYCLE.randomFamily+20)]
	
	if "desc" in familyData:
		$TextBody.text = familyData["desc"]
		
	if "who_from" in familyData:
		$TextPerson.text = familyData["who_from"]
		
	if "option1" in familyData:
		option1 = familyData["option1"]
		if "name" in option1:
			$YesButton.text = option1["name"]
	
	if "option2" in familyData:
		option2 = familyData["option2"]
		if "name" in option2:
			$NoButton.text = option2["name"]
	
	currentEvent = "work"
	pass

func _workEvent():
	###changing its text
	var workData = CYCLE.allEvents["wor" + str(CYCLE.randomWork+30)]
	
	if "desc" in workData:
		$TextBody.text = workData["desc"]
		
	if "who_from" in workData:
		$TextPerson.text = workData["who_from"]
		
	if "option1" in workData:
		option1 = workData["option1"]
		if "name" in option1:
			$YesButton.text = option1["name"]
	
	if "option2" in workData:
		option2 = workData["option2"]
		if "name" in option2:
			$NoButton.text = option2["name"]
	
	currentEvent = "social"
	pass

func _on_YesButton_pressed():
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
