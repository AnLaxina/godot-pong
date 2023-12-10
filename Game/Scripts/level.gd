extends Node2D

var player_score_right = 0
var player_score_left = 0

func _ready():
	# Sets the background color to black once the game opens
	# The reason why it's coded in is so that the color in the editor isn't black too.
	RenderingServer.set_default_clear_color("black")


func _on_left_bound_entered():
	player_score_right += 1
	$ScoreRight.text = str(player_score_right)
	reset_ball()


func _on_right_bound_entered():
	player_score_left += 1
	$ScoreLeft.text = str(player_score_left)
	reset_ball()
	
	

func reset_ball():
	# Resets the ball to its initial position, in the inspector it's 412, 264
	# Also randomizes the ball's speed and direction for a more "exciting" game
	$Ball.position = Vector2(412, 264)
	var ball_speed : int = randi_range(700, 850)
	
	# Use a "switch statement" to randomize the direction of the ball diagonally
	var ball_direction : Vector2 = Vector2.ZERO
	var random_int : int = randi_range(0,3)
	match random_int:
		0:
			ball_direction = Vector2.RIGHT
		1:
			ball_direction = Vector2.LEFT
		2:
			ball_direction = Vector2.DOWN
		3:
			ball_direction = Vector2.UP
	var ball_rotation = ball_direction.rotated(randf_range(PI/3, PI/4))
	
	# Finally apply the velocity based off the ball's speed and rotation/direction
	$Ball.velocity = ball_speed * ball_rotation
