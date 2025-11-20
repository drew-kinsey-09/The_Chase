extends CharacterBody2D

var run_speed = 350
var can_move = false
@onready var player = $"../Player"

# Got this function from https://kidscancode.org/godot_recipes/4.x/ai/chasing/index.html
func _physics_process(delta):
	# found using google ai with prompt
	# "make enemy wait to move until you move godot" on 11/20/2025
	if can_move:
		velocity = Vector2.ZERO
		if player:
			velocity = position.direction_to(player.position) * run_speed
		move_and_slide()


func _on_hitbox_body_entered(body: CharacterBody2D) -> void:
	pass


func _on_button_start_game() -> void:
	can_move = true
