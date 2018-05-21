extends KinematicBody2D

var descent = 32					#How much should we drop?
var can_charge = false				#Can we drop?

var direction = 1        			#Does the invader go left or right?
var velocity = Vector2()  			#Movement
var speed = 0.2             			#Speed of movement

signal charge



func _on_EnemyContainer_switch_dir():
	if direction == 1:
		direction = -1
	elif direction == -1:
		direction = 1
	speed = speed + 0.1
	print("I am ignoring you!")

func _physics_process(delta):
	
	if $rayright_Enemy.is_colliding() or $rayleft_Enemy.is_colliding():
		emit_signal("charge")		#If the Raycasts bump into the wall, tell army to charge
		
			
	if direction == 1:      		#Are we moving left?
		velocity.x = speed    		#Move further left at speed
	elif direction == -1:     		#Are we moving right? 
		velocity.x = -speed   		#Move further right at speed
				
	move_and_collide(velocity) 		#Move ships accordingly

