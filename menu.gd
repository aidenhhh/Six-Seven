extends Control


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level_selector.tscn")


func _on_rules_button_pressed() -> void:
	get_tree().change_scene_to_file("res://how_to_play_page.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
