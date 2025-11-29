extends Area2D


var key_taken = false
var door_open = false



func _on_body_entered(body: PhysicsBody2D):
	if key_taken == false:
		key_taken = true
		$Key3.hide()
	
func _process(delta):
	if key_taken == true:
		if door_open == false:
			door_open = true
			
