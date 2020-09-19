extends Control

signal startScene;

# Called when the node enters the scene tree for the first time.
func _ready():
	$Scene1.connect("pressed", self, "start_scene_1");
	$Scene2.connect("pressed", self, "start_scene_2");
	pass # Replace with function body.


func start_scene_1() -> void:
	emit_signal("startScene", 1);

func start_scene_2()-> void:
	emit_signal("startScene", 2);