extends RigidBody2D

@export var speed : int = 200

func _ready():
	# Set initial direction of ball
	linear_velocity = Vector2(speed, 0).rotated(randi_range(0, 2 * PI))
		
