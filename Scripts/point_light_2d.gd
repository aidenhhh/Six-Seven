extends PointLight2D
func _process(delta):
	position += (get_global_mouse_position()*delta)-position
