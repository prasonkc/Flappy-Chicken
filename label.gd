extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("Flap")):
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
