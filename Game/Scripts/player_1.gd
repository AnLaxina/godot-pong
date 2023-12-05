extends CharacterBody2D


@export var paddle_speed : int = 300

func _process(_delta):
	# Gets the direction based on what the user pressed
	# If it's 'W' it returns -1 as y in the up direction is -1
	var direction : float = Input.get_axis("move_up", "move_down")
	
	if Input.is_action_pressed("move_down"):
		velocity.y = paddle_speed * direction
	if Input.is_action_pressed("move_up"):
		velocity.y = paddle_speed * direction
	
	# Handle if no button is pressed
	if direction == 0:
		velocity.y = 0
		
	move_and_slide()
