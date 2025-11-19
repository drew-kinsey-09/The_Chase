extends Area2D

var num_keys = 0



func _on_body_entered(body: Node2D) -> void:
	num_keys += 1
	print(num_keys)
	queue_free()
