extends Area2D

var filled = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_slot1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	area.global_position = self.global_position
	pass # Replace with function body.
