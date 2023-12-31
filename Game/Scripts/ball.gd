extends CharacterBody2D

func _ready():
	# Set the initial speed of the ball
	var speed = 600
	# Set the initial direction of the ball to a random angle
	var direction = Vector2.DOWN.rotated(randf_range(PI/3, PI/4))
	# Set the initial velocity of the ball by multiplying the speed and direction
	velocity = speed * direction
		
func _physics_process(delta):
	# Returns the body that is hitting the ball
	var collision_info = move_and_collide(velocity * delta)
	# If something is hitting the ball bounce it back
	if collision_info:
		# Pushes the ball back in the opposite direction of the body that it hit
		# A normal vector helps us achieve this by returning the oppposite direction
		velocity = velocity.bounce(collision_info.get_normal())

