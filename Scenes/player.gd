extends CharacterBody2D

const maxV=450

var input = Vector2.ZERO

var canMove = true

var slide_direction = Vector2.ZERO


	

func _physics_process(delta: float) -> void:
	if canMove:
		var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		if input!=Vector2.ZERO:
			canMove=false
			slide_direction = input.normalized()
			
	if not canMove:
		velocity = slide_direction*maxV
		var collision = move_and_collide(slide_direction * maxV * delta)
		
		if collision:
			canMove = true
			velocity = Vector2.ZERO
	move_and_slide()
			
		
func key_collect():
	LevelManage.collected_keys+=1

		
		

		
	
