extends RigidBody2D

@export var speed : int = 400

func _ready():
	
	# Set initial direction of ball
	linear_velocity = Vector2(speed, 0).rotated(randi_range(0, 2 * PI))
		

# For this signal to work be sure to enable contact_monitor
func _on_body_entered(body):
	# If the ball hits either the upper or lower wall, do something
	if body.is_class("StaticBody2D"):
		print("HI it's a StaticBody2D!")
		# Reflect the y-component of the velocity
		linear_velocity.y *= -1
		# Adjust the angle of the velocity vector within a certain range
		var angle = linear_velocity.angle() + randf_range(-PI/8, PI/8)
		linear_velocity = Vector2(speed, 0).rotated(angle)
