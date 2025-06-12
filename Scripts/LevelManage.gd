extends Node
var current_level = 0
var total_keys = 0
var collected_keys = 0
var levels = ["res://Scenes/level1.tscn", "res://Scenes/level2.tscn", "res://Scenes/level3.tscn", "res://Scenes/win.tscn"]

func load_next_level():
	current_level += 1
	get_tree().change_scene_to_file(levels[current_level])
	reset_keys()
		
func openable():
	return collected_keys==total_keys

func reset_keys():
	collected_keys = 0
	total_keys = get_tree().get_nodes_in_group("keys").size()
