extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$win_label.visible = false
	$restart_win.visible = false
	$new_level.visible = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_win() -> void:
	$win_label.visible = true
	$restart_win.visible = true
	$new_level.visible = true
