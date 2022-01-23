extends Sprite

var option1 = []
var option2 = []

# Called when the node enters the scene tree for the first time.
func _ready():
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
		
	pass
	
