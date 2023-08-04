extends Area2D


func _on_Sofoklis_body_exited(body):
	set_collision_mask_bit(0, false)

