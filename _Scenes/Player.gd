extends KinematicBody2D

export (int) var speed

var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") && not $rayright_Player.is_colliding():
		velocity.x = speed
	elif Input.is_action_pressed("ui_left") && not $rayleft_Player.is_colliding():
		velocity.x = -speed
	else:
		velocity.x = 0
	
	if $rayright_Player.is_colliding():
		print("right")
	if $rayleft_Player.is_colliding():
		print("left")
			
	velocity = move_and_slide(velocity)
	
		