extends Button



# https://www.youtube.com/watch?v=GZrALMvOwY8&t=850s
# This video helped formatting to go between levels
func _on_pressed() -> void:
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int() + 1
	var next_level_path = "res://levels/level_" + str(next_level_number) + ".tscn"
	get_tree().change_scene_to_file(next_level_path)
