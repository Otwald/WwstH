extends Button

var choice_props : Dictionary
var dialog : Control

func _ready():
	connect("pressed", self, "on_pressed")
	dialog = get_parent().get_parent().get_parent()

func on_build(content : Dictionary, count : int, choice_count : int):
	text = content.body
	choice_props = { "choice" : choice_count, "own_numb" : count , "jump" : content.jump}
	choice_props[content.key] = content.value
	choice_props["character"] = content.key

func on_pressed():
	dialog.on_choice_found(choice_props)