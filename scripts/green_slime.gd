extends Node2D

const SPEED = 55

var direction = 1

@onready var ray_cast_right = $RayCast_Right
@onready var ray_cast_left = $RayCast_Left

@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	
	# translating green slime by 1 * delta (delta being time since last frame)
	position.x += direction * SPEED * delta
	
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
		
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	
