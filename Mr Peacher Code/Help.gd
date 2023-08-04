extends Area2D

signal help_changed

func _on_Help_body_entered(body):
	VarHelp.help += 1
	emit_signal("help_changed")
	queue_free()
