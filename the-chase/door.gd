extends Node2D


func _ready():
	$opened.visible = false
	$closed.visible = true

func _on_area_2d_door_opened():
	$opened.visible = true
	$closed.visible = false
