extends Node2D

func _process(delta: float) -> void:
	if($pipe3.position.x < 600):
		$Timer.start()

func spawn_pipes():
	var rng = RandomNumberGenerator.new()
	rng.randomize()

	var templates = [$pipe1, $pipe2, $pipe3]
	var chosen = templates[rng.randi_range(0, 2)]

	var copy = chosen.duplicate()
	copy.scale.y = rng.randi_range(0, 1.5)
	copy.position = Vector2(600, 0)
	add_child(copy)

func _on_timer_timeout() -> void:
	spawn_pipes()
	
func death(body: Node) -> void:
	if body.name == "Chicken":
		body.queue_free()
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

func _on_pipe_1_body_entered(body: Node2D) -> void:
	death(body)


func _on_pipe_2_body_entered(body: Node2D) -> void:
	death(body)
	

func _on_pipe_3_body_entered(body: Node2D) -> void:
	death(body)
