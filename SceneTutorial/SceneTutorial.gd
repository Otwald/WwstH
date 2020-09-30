extends "res://Scene.gd"


var manager : Node2D;
var astraea : Node2D;


# Called when the node enters the scene tree for the first time.
func _ready():
	var resp = build_scene("sceneTutorial");
	var loaded_chars :Array = resp[0];
	content = resp[1].content;
	manager = loaded_chars[0];
	astraea = loaded_chars[1];
	manager.visible = true;
	astraea.visible = true;
	character = {"Astraea" : astraea, "Manager" : manager}
	play_scene()