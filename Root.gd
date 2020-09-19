extends Node

var scenes = ["","res://Scene1/Scene1.tscn", "res://Scene2/Scene2.tscn"]


# Called when the node enters the scene tree for the first time.
func _ready():
	$MapRoot.connect("startScene", self, "scene_select");


func scene_select(scene : int):
	var player_scene : PackedScene = load(scenes[scene]);
	var scene_play : Control = player_scene.instance()
	self.add_child(scene_play)
