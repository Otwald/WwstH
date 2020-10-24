extends "res://StateMachine/State.gd"


func on_signal():
	sm._change_state("idle");