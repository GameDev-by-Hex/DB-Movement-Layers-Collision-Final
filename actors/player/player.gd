extends KinematicBody2D


var speed = 100

onready var animatedSprite = $AnimatedSprite

func _physics_process(delta):
	
	var direction = Vector2((Input.get_action_strength("right")-Input.get_action_strength("left"))*speed,
							(Input.get_action_strength("down")-Input.get_action_strength("up"))*speed)
	
	
	if(direction.x == 0 && direction.y == 0):
		animatedSprite.animation = "idle"
		animatedSprite.play()
		
	if(direction.x != 0 || direction.y != 0):
		animatedSprite.animation = "walk"
		animatedSprite.play()
		
	if(direction.x > 0 ):		
		animatedSprite.flip_h = false		
		
	if(direction.x < 0 ):		
		animatedSprite.flip_h = true
	
	move_and_slide(direction)
