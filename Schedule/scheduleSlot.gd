extends Area2D

var filled = false
var dayEvent = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_slot1_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	var card = body
	print(str(dayEvent))
	body.dragging = false
	body.position = self.global_position
	dayEvent = body.get_parent().dayEvent
	print(str(dayEvent))
	pass # Replace with function body.
