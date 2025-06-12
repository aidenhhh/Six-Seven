extends CharacterBody2D

const maxV=450

var input = Vector2.ZERO

var canMove = true

var slide_direction = Vector2.ZERO


	

func _physics_process(delta: float) -> void:
	if canMove:
		if Input.is_action_pressed("ui_right"):
			slide_direction=Vector2(1,0)
		elif Input.is_action_pressed("ui_left"):
			slide_direction=Vector2(-1,0)
		elif Input.is_action_pressed("ui_up"):
			slide_direction=Vector2(0,-1)
		elif Input.is_action_pressed("ui_down"):
			slide_direction=Vector2(0,1)
		
		if slide_direction!=Vector2.ZERO:
			canMove=false
		
			
	if not canMove:
		velocity = slide_direction*maxV
		var collision = move_and_collide(slide_direction * maxV * delta)
		
		if collision:
			canMove = true
			velocity = Vector2.ZERO
	move_and_slide()
			
		
func key_collect():
	LevelManage.collected_keys+=1

		
		

		
	
