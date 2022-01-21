extends KinematicBody2D

var dragging = false
var placed = false

signal dragsignal;

func _ready():
	connect("dragsignal",self,"_set_drag_pc")
	
	
func _process(delta):
	if dragging:
		self.global_position = get_global_mouse_position()

func _set_drag_pc():
	dragging=!dragging

func _on_KinematicBody2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()

func _on_SpotArea_Area_entered(_area: Area2D):
	print("Pissy")
