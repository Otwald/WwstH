extends Node2D


onready var parent : Control = get_parent();
onready var text_box : RichTextLabel = parent.find_node("DialogBox").find_node("Text");

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func say(text : String , mood : String = ""):
	# $DialogBox/Text.text = text;
	text_box.text = text;
