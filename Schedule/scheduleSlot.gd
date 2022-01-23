extends Area2D

var filled = false
export var dayEvent = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_slot_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if filled == false and self.get_meta("type") != "placed":
		_toggle()
		
		var filled = true
		body.set_meta("type", "placed")
		self.set_meta("type", "placed")
		print(str(dayEvent))
		body.dragging = false
		body.global_position.x = self.global_position.x
		body.global_position.y = self.global_position.y
		dayEvent = body.get_parent().dayEvent
		print(str(dayEvent))

func _on_slot_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	if body.get_meta("type") == "placed":
		filled = false
		self.set_meta("type", "notPlaced")
		body.set_meta("type", "notPlaced")
		
func _toggle():
	SOUND.get_node("Toggle").play()
