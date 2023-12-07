extends CharacterBody2D

func _ready():
	# Set the initial speed of the ball
	var speed = 450
	# Set the initial direction of the ball to a random angle
	var direction = Vector2(1, 0).rotated(randf_range(0, 2 * PI))
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

