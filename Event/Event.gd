extends Node2D


var background = 0
var character = 0
var dialogue = 0

var morality = 0
var hunger = 0
var social = 0
var energy = 0
var money = 0
var happiness = 0
var infected = false 

onready var file_path = 'res://eventExperience.txt'


# Called when the node enters the scene tree for the first time.
func _ready():
	load_file(file_path)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Current event: " + str(CYCLE.eventKey)


func _on_Button_pressed():
	CYCLE._endEvent()
	pass # Replace with function body.
	
func load_file(file_path):
	var file = File.new()
	file.open(file_path, file.READ)
	background = file.event1.background
	print(background)
