extends CharacterBody2D

#//define initial velocity amd gravity
var velocity_y = 0
var FLAP_STR = -200
var GRAVITY = 400
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("Flap")):
#		make the chicken flap upwards
		velocity_y = FLAP_STR
		$AnimatedSprite2D.play("flap")
		$AnimatedSprite2D.rotation_degrees -= 20
	
#	constant pull or gravity
	velocity_y += GRAVITY * delta
	position.y += velocity_y * delta

#change the animation if chicken falls
	if(velocity_y>=0):
		get_node("AnimatedSprite2D").play("Idle")
		$AnimatedSprite2D.rotation_degrees = 20
