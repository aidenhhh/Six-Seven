extends Control

@onready var main = $"../"

func _on_resume_pressed():
	main.pauseMenu()


func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")


func _on_quit_pressed():
	get_tree().quit()
