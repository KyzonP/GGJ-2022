extends Area2D

var dayEvent = 0
var cardType = ""

#onready var sprite = get_node("KinematicBody").get_node("Sprite")
onready var KB = $KinematicBody2D
onready var sprite = KB.get_node("Sprite")
onready var eventName = KB.get_node("Name")

onready var backFam = load("res://Assets/Schedule/ScheduleSelector_Family.png")
onready var backLif = load("res://Assets/Schedule/ScheduleSelector_Life.png")
onready var backWor = load("res://Assets/Schedule/ScheduleSelector_Work.png")
onready var backSoc = load("res://Assets/Schedule/ScheduleSelector_Social.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dayEvent >0 and dayEvent <11:
		sprite.texture = backSoc
	elif dayEvent >10 and dayEvent <21:
		sprite.texture = backLif
	elif dayEvent >20 and dayEvent <31:
		sprite.texture = backFam
	elif dayEvent > 30 and dayEvent <41:
		sprite.texture = backWor
	pass
	
	eventName.text = cardType
