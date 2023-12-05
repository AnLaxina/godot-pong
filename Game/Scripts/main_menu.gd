extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color("black")


func _on_play_button_pressed():
	# When button is pressed, switch the the level scene/start game
	get_tree().change_scene_to_file("res://Scenes/level.tscn")


func _on_exit_button_pressed():
	# When button is pressed, quit the game
	get_tree().quit()
