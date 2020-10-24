extends Control

onready var root = get_parent();
onready var sm = root.get_node("SM")

# Called when the node enters the scene tree for the first time.
func _ready():
	$MContainer/Resume.connect("pressed", self, "on_resume");
	$MContainer/ToTitle.connect("pressed", self, "on_to_title");

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func on_resume():
	sm._change_state("previous");

func on_to_title():
	get_tree().change_scene("res://Root.tscn");
