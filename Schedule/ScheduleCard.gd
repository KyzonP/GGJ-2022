extends Area2D

var dayEvent = 2
#onready var sprite = get_node("KinematicBody").get_node("Sprite")
onready var KB = $KinematicBody2D
onready var sprite = KB.get_node("Sprite")

onready var backFam = load("res://Assets/Schedule/ScheduleSelector_Family.png")
onready var backLif = load("res://Assets/Schedule/ScheduleSelector_Life.png")
onready var backWor = load("res://Assets/Schedule/ScheduleSelector_Work.png")
onready var backSoc = load("res://Assets/Schedule/ScheduleSelector_Social.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dayEvent == 1:
		sprite.texture = backFam
	elif dayEvent == 2:
		sprite.texture = backLif
	pass
	
	print("Exists")

