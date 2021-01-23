	extends Control

signal startScene;

# Called when the node enters the scene tree for the first time.
func _ready():
	$SceneTut.connect("pressed", self, "start_scene_tut");
	$Scene1.connect("pressed", self, "start_scene_1");
	$Scene2.connect("pressed", self, "start_scene_2");


func start_scene_tut() -> void:
	emit_signal("startScene", 0);
	$SceneTut.disabled = true;

func start_scene_1()-> void:
	emit_signal("startScene", 1);
	$Scene1.disabled = true;

func start_scene_2()-> void:
	emit_signal("startScene", 2);
	$Scene1.disabled = true;
