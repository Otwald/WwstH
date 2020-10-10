	extends Control

signal startScene;

# Called when the node enters the scene tree for the first time.
func _ready():
	$SceneTut.connect("pressed", self, "start_scene_tut");
	$Scene1.connect("pressed", self, "start_scene_1");


func start_scene_tut() -> void:
	emit_signal("startScene", 1);
	$SceneTut.disabled = true;

func start_scene_1()-> void:
	emit_signal("startScene", 2);