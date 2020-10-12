extends "res://StateMachine/State.gd"

signal OnNext

var skip : bool;

func enter(_machine):
	skip = true;

func update_process(_machine, _delta):
	var user_input = Input.is_action_just_pressed("ui_accept");
	if user_input and not skip:
		emit_signal("OnNext");
		skip = true;
		user_input = false
	if user_input and skip:
		sm._change_state("skip");

func to_next():
	if skip:
		skip = false