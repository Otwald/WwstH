extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Title/Label.text = "Who will save the hero?"
	$Menu/Start.connect("pressed", self, "on_start")
	MusicController.play("res://Asset/BGMusic/tutorial.ogg")

func on_start():
	visible = false

func on_end():
	visible = true
	$Title/Label.text  = "Thank you for Playing this Prototype"
	$Menu/Start.visible = false
