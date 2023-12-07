extends StaticBody2D

signal left_bound_entered
signal right_bound_entered

func _on_left_bound_body_entered(body):
	left_bound_entered.emit()


func _on_right_bound_body_entered(body):
	right_bound_entered.emit()
