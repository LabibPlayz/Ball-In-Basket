extends RigidBody

func _ready():
	GlobalAudioAdvance.play()

func _on_Finish_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Level2.tscn")


func _on_Finish2_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Level3.tscn")


func _on_Finish4_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://GameOver.tscn")


func _on_Teleporter_body_entered(body):
	if body.name == "Player":
		self.global_transform.origin = Vector3(-0.047, 17.274, 5.965)


func _on_Finish3_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Level4.tscn")
