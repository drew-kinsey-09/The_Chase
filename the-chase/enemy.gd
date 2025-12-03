extends CharacterBody2D

signal lose 

var key_taken = false
var run_speed = 400
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
		



func _on_button_start_game() -> void:
	can_move = true


func _on_player_win() -> void:
	if key_taken:
		can_move = false



func _on_hitbox_body_entered(body: PhysicsBody2D) -> void:
	can_move = false
	lose.emit()


func _on_key_body_entered(body: Node2D) -> void:
	key_taken = true
