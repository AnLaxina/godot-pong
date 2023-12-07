extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Sets the background color to black once the game opens
	# The reason why it's coded in is so that the color in the editor isn't black too.
	RenderingServer.set_default_clear_color("black")


func _on_left_bound_entered():
	print("Ball made it to the left!")
	call_deferred("reset_scene")


func _on_right_bound_entered():
	call_deferred("reset_scene")
	
	

func reset_scene():
	get_tree().reload_current_scene()
