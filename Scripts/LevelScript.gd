extends Node2D

@onready var pause_menu = $PauseMenu

var paused = false
var temp = 1

func _process(delta):
	if temp == 1:
		pause_menu.hide();
		temp = temp - 1
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
