extends Area2D

const PIPE_VELOCITY := 100

func _process(delta: float) -> void:
	position.x -= PIPE_VELOCITY * delta
	
