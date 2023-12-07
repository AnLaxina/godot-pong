extends CharacterBody2D

# Identical to player 1's script. Just changing how the input is recieved.

@export var paddle_speed : int = 300

func _process(delta):
	# Gets the direction based on what the user pressed
	# If it's 'W' it returns -1 as y in the up direction is -1
	var direction : float = Input.get_axis("ui_up", "ui_down")
	
	if Input.is_action_pressed("ui_down"):
		velocity.y = paddle_speed * direction
	if Input.is_action_pressed("ui_up"):
		velocity.y = paddle_speed * direction
	
	# Handle if no button is pressed
	if direction == 0:
		velocity.y = 0
		
	move_and_collide(velocity * delta)
