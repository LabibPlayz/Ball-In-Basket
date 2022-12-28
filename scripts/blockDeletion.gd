extends RigidBody
export(PackedScene) var Sound
func _ready():
	pass
	#get_node("blocBrokeh")
	
func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			var breakSound = Sound.instance()
			get_parent().get_parent().add_child(breakSound)
			queue_free()
