extends "res://StateMachine/State.gd"

signal OnNext

func update_process(_machine, _delta):
	var next = Input.is_action_just_pressed("ui_accept");
	if next:
		emit_signal("OnNext");
