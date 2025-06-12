extends CharacterBody2D

var level=0
var speed = 150
var facing = ""


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func player():
	pass #THIS IS FOR THE ENEMY ETHAN <- wtf does that mean. its literally called player

func raise_level():
	level+=1
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#checkdead();
	var direction = Input.get_vector("left", "right", "up", "down")
	_player_movement(delta)


func _player_movement(delta):
	var direction = Input.get_vector("left", "right", "up", "down")

	if direction.y > 0:
		facing = "front"
	elif direction.y < 0:
		facing = "back"
	elif direction.x < 0:
		facing = "left"
	elif direction.x > 0:
		facing = "right"
	velocity = direction.normalized() * speed
	move_and_slide()
	
	
		
func _move_anim():
	if facing == "front":
		$AnimatedSprite2D.play("front-walk")
	elif facing == "back":
		$AnimatedSprite2D.play("back-walk")
	elif facing == "left":
		$AnimatedSprite2D.play("left-walk")
	elif facing == "right":
		$AnimatedSprite2D.play("right-walk")


func _idle():
	if facing == "front":
		$AnimatedSprite2D.play("front-idle")
	elif facing == "back":
		$AnimatedSprite2D.play("back-idle")
	elif facing == "left":
		$AnimatedSprite2D.play("left-idle")
	else:
		$AnimatedSprite2D.play("right-idle")
	
