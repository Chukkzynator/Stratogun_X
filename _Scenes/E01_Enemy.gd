extends Node2D

var descent = 64
var can_charge = false

signal charge

func _process(delta):
	if $rayright_Enemy.is_colliding() or $rayleft_Enemy.is_colliding():
		emit_signal("charge")