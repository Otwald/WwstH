	extends Control

signal startScene;

onready var scenes : Array = [$Scene0, $Scene1, $Scene2]
# Called when the node enters the scene tree for the first time.
func _ready():
	for scene in scenes:
		scene.connect("pressed", self, "start_scene",[scene]);
		scene.connect("mouse_entered", self, "scene_tooltip", [scene]);
		scene.connect("mouse_exited", self, "scene_tooltip", [scene])


func start_scene(scene : Control) -> void:
	emit_signal("startScene", scenes.bsearch(scene));
	scene.get_node("Label").text = "";
	scene.disabled = true;

func scene_tooltip(scene : Control)->void:
	scene.get_node("Label").visible = !scene.get_node("Label").visible; 
