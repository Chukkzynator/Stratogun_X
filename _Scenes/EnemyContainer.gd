extends Node2D

signal switch_dir

func _on_enemies_charge():
	position.y = position.y + 32
	emit_signal("switch_dir")
	#print(position.y)
	print("charge!")
