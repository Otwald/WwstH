extends "res://StateMachine/State.gd"

var loaded_menu : Control;

onready var packedmenu : PackedScene= load("res://Menu/Menu.tscn");


func enter(_machine):
	loaded_menu = packedmenu.instance();
	sm.root.add_child(loaded_menu);

func update_process(_machine, _delta):
	if Input.is_action_just_pressed("ui_cancel"):
		sm._change_state("previous");

func exit(_machine):
	loaded_menu.queue_free();
