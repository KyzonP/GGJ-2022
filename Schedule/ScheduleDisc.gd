extends TextureButton

var dragging = false
var placed = false

signal dragsignal;

var dayEvent = 5

onready var backFam = load("res://Assets/Schedule/ScheduleSelector_Family.png")
onready var backLif = load("res://Assets/Schedule/ScheduleSelector_Life.png")
onready var backWor = load("res://Assets/Schedule/ScheduleSelector_Work.png")
onready var backSoc = load("res://Assets/Schedule/ScheduleSelector_Social.png")

func _ready():
	connect("dragsignal",self,"_set_drag_pc")

func _process(delta):
	if dragging:
		self.rect_position = get_global_mouse_position() + Vector2(-20,-25)
		
	if dayEvent >0 and dayEvent <11:
		self.set_normal_texture = backSoc
	elif dayEvent >10 and dayEvent <21:
		self.set_normal_texture = backLif
	elif dayEvent >20 and dayEvent <31:
		self.set_normal_texture = backFam
	elif dayEvent > 30 and dayEvent <41:
		self.set_normal_texture = backWor

func _set_drag_pc():
	print("working")
	dragging=!dragging

func _on_ScheduleDisk_toggled(button_pressed):
	emit_signal("dragsignal")
	pass # Replace with function body.

func _on_ScheduleDisk_pressed():
	emit_signal("dragsignal")
	pass # Replace with function body.
