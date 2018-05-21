extends KinematicBody2D

var direction = 1
var velocity = Vector2()
var descent = 64
var speed = 1

var can_charge = false

signal charge

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	
	if $rayright_Enemy.is_colliding():
		emit_signal("charge")
		direction = -1
		if can_charge == true:
			print(can_charge)
			position.y = position.y + 64
			can_charge = false
			print(can_charge)
			
	if $rayleft_Enemy.is_colliding():
		emit_signal("charge")
		direction = 1
		#position.y = position.y + 64
				
	if direction == 1: 
		velocity.x = speed
							
	if direction == -1:
		velocity.x = -speed
			
	move_and_collide(velocity)

func _on_kin_Enemy_charge():
	can_charge = true
	#position.y = position.y + 64
