extends CanvasLayer

var loss = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$lost_text.visible = false
	$restart_loss.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_player_lose() -> void:
	loss += 1
	if loss > 1:
		$lost_text.visible = true
		$restart_loss.visible = true


func _on_enemy_lose() -> void:
	loss += 1
	if loss > 1:
		$lost_text.visible = true
		$restart_loss.visible = true


func _on_button_start_game() -> void:
	$lost_text.visible = false
	$restart_loss.visible = false
