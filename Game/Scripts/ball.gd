extends CharacterBody2D

@export var speed : int = 400

func _ready():
	velocity = Vector2(200,200)
		
func _physics_process(delta):
	# Returns the body that is hitting the ball
	var collision_info = move_and_collide(velocity * delta)
	# If something is hitting the ball bounce it back
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
