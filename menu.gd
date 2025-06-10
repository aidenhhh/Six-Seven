extends Control

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level1.tscn")


func _on_rules_pressed() -> void:
	get_tree().change_scene_to_file("res://how_to_play_page.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
