extends Control


onready var choice_scene : PackedScene = load("res://DialogBox/Choice/Choice.tscn")
onready var spawns : Array = [$Spawn1.transform, $Spawn2.transform, $Spawn3.transform, $Spawn4.transform];
onready var text_box : RichTextLabel = $DialogBox/Text;
onready var choice_box : VBoxContainer = $Choice/Container;
onready var speaker_box : RichTextLabel = $SpeakerBox/Text;


##TODO remake charakter spawn to fit a json format
func build_scene(bg : Texture, charas : Array) ->void:
	set_bg(bg);
	var i = 0
	while i < charas.size():
		charas[i].transform = spawns[i];
		add_child(charas[i]);
		charas[i].visible = false;
		i+=1;

#sets the background
func set_bg(bg : Texture)->void:
	$Bg.set_texture(bg);


func say(text : String):
	text_box.text = "";
	text_box.add_text(text);

func set_speaker(content : String)->void:
	speaker_box.text = content;

func build_choice(line : Dictionary):
	var counter = 1
	for choice in line.choices:
		var init_choice : Button = choice_scene.instance();
		init_choice.on_build(choice, counter, line.choice);
		choice_box.add_child(init_choice);
		counter += 1

func on_choice_found(choice : Dictionary):
	get_parent().on_jump(choice.jump)
	var to_kill = choice_box.get_children()
	for node in to_kill:
		node.queue_free()