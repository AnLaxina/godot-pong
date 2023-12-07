extends CharacterBody2D

func _ready():
	velocity = Vector2(250,250)
		
func _physics_process(delta):
	# Returns the body that is hitting the ball
	var collision_info = move_and_collide(velocity * delta)
	# If something is hitting the ball bounce it back
	if collision_info:
		# Pushes the ball back in the opposite direction of the body that it hit
		# A normal vector helps us achieve this by returning the oppposite direction
		velocity = velocity.bounce(collision_info.get_normal())

