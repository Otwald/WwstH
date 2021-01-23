extends Node

var scenes : Array = ["res://Scenes/SceneTutorial/SceneTutorial.tscn","res://Scenes/Scene1/Scene1.tscn", "res://Scenes/Scene2/Scene2.tscn"]
var figures : Dictionary = { "Manager" : "res://Character/Manager/Manager.tscn", "Merax" : "res://Character/Merax/Merax.tscn", "Astraea" :"res://Character/Astraea/Astraea.tscn", "Mayor" : "res://Character/Mayor/Mayor.tscn" }
var save_log : Dictionary;

# Called when the node enters the scene tree for the first time.
func _ready():
	$MapRoot.connect("startScene", self, "select_scene");

func select_scene(scene : int):
	var player_scene : PackedScene = load(scenes[scene]);
	var scene_play : Control = player_scene.instance()
	self.add_child(scene_play)


#savelog = {scene_number : {"scene_character" : choice_points, "choice_number" : choocen_number }}
func on_save_scene_props(choice : Dictionary):
	if not save_log.has(choice.scene):
		save_log[choice.scene] = { choice.character : choice[choice.character] } 
	else:
		save_log[choice.scene][choice.character] = save_log[choice.scene][choice.character] + choice[choice.character]
	save_log[choice.scene][choice.choice] = choice.own_numb
	print(save_log);
