extends CharacterBody2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("Flap")):
		position.y -= 80;
		get_node("AnimatedSprite2D").play("flap")
		$AnimatedSprite2D.rotation_degrees -= 20
		await get_node("AnimatedSprite2D").animation_finished

	position.y += 2
	get_node("AnimatedSprite2D").play("Idle")
	$AnimatedSprite2D.rotation_degrees = 20
	
