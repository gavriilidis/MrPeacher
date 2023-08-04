
extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 180
const GRAVITY = 50
const JUMPFORCE = -1200

func _physics_process(_delta):
	
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
		$Sprite.play("walk")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
		$Sprite.play("walk")
		$Sprite.flip_h = true
	else:
		 $Sprite.play("front")
		
	if not is_on_floor():
		$Sprite.play("front")

	
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE

	velocity = move_and_slide(velocity, Vector2.UP)
	
	for index in get_slide_count():
		var collision  = get_slide_collision(index)
		if collision.collider.is_in_group("bodies"): 
			print("collided with ", collision.collider.name)
	
	velocity.x = lerp(velocity.x,0,0.25)\
	



