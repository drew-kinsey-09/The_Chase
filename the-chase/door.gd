extends Node2D


func _ready():
	$opened.visible = false
	$closed.visible = true


func _on_key_body_entered(body: Node2D) -> void:
	$opened.visible = true
	$closed.visible = false
