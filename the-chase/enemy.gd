extends CharacterBody2D

var run_speed = 350
@onready var player = $"../Player"

# Got this function from https://kidscancode.org/godot_recipes/4.x/ai/chasing/index.html
func _physics_process(delta):
	velocity = Vector2.ZERO
	if player:
		velocity = position.direction_to(player.position) * run_speed
	move_and_slide()
