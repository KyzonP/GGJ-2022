extends Area2D

var dayEvent = 2
#onready var sprite = get_node("KinematicBody").get_node("Sprite")
onready var KB = $KinematicBody2D
onready var sprite = KB.get_node("Sprite")

onready var back1 = load("res://Assets/JaffaCake.png")
onready var back2 = load("res://Assets/JammieDodger.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dayEvent == 1:
		sprite.texture = back1
	elif dayEvent == 2:
		sprite.texture = back2
	pass

