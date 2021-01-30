extends KinematicBody2D


const WORLD_LAYER = 3


func _on_body_entered(body):
	print("_on_body_entered")
	body.set_collision_mask_bit(WORLD_LAYER,false)
	


func _on_body_exited(body):
	print("_on_body_exited")
	body.set_collision_mask_bit(WORLD_LAYER,true)
