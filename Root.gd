extends Node

var scenes = ["","res://Scene1/Scene1.tscn", "res://Scene2/Scene2.tscn"]
var figures : Dictionary = { "Manager" : "res://Character/Manager/Manager.tscn", "Merax" : "res://Character/Merax/Merax.tscn"}


# Called when the node enters the scene tree for the first time.
func _ready():
	$MapRoot.connect("startScene", self, "select_scene");

func select_scene(scene : int):
	var player_scene : PackedScene = load(scenes[scene]);
	var scene_play : Control = player_scene.instance()
	$MapRoot/Scene1.disabled = true;
	self.add_child(scene_play)


func on_save_scene_props():
	pass