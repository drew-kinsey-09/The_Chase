extends CharacterBody2D
 
signal win
signal lose

const SPEED = 500.0
const JUMP_VELOCITY = -500.0
var can_move = false


func _physics_process(delta: float) -> void:
	if can_move:
		if not is_on_floor():
			velocity += get_gravity() * delta

		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY

		var direction := Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)

		move_and_slide()


func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	win.emit()


func _on_button_start_game() -> void:
	can_move = true


func _on_enemy_lose() -> void:
	can_move = false


func _on_door_body_entered(body: Node2D) -> void:
	win.emit()


func _on_hitbox_body_entered(body: CharacterBody2D) -> void:
	can_move = false
	lose.emit()
