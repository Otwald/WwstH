extends "res://Scene.gd"


var manager : Node2D;
var merax : Node2D;


# Called when the node enters the scene tree for the first time.
func _ready():
	var resp = build_scene("scene1");
	var loaded_chars :Array = resp[0];
	content = resp[1].content;
	manager = loaded_chars[0];
	merax = loaded_chars[1];
	manager.visible = true;
	merax.visible = true;
	character = {"Merax" : merax, "Manager" : manager}
	play_scene()
