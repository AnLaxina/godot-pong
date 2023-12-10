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
	
	
# Resets the ball to its initial position, in the inspector it's 412, 264
func reset_ball():
	$Ball.position = Vector2(412, 264)
