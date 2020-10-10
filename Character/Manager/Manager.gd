extends "res://Character/Character.gd"


onready var parent : Control = get_parent();
onready var text_box : RichTextLabel = parent.find_node("DialogBox").find_node("Text");
