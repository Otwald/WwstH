extends "res://StateMachine/State.gd"

signal OnSkip
var finished : bool;

func enter(_machine):
	emit_signal("OnSkip");

func on_skipped():
	sm._change_state("previous");
