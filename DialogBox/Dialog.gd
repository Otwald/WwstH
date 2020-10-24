extends Control

signal OnSkipped;
signal ToNext;

export var org_speed = 50;
export var skip_modi = 6; 
var speed = org_speed;
var flow : float = 0;
var _scene : int;

onready var choice_scene : PackedScene = load("res://DialogBox/Choice/Choice.tscn")
onready var spawns : Array = [$Spawn1.transform, $Spawn2.transform, $Spawn3.transform, $Spawn4.transform];
onready var text_box : RichTextLabel = $DialogBox/Text;
onready var choice_box : VBoxContainer = $Choice/Container;
onready var speaker_box : RichTextLabel = $SpeakerBox/Text;
onready var root : Node= get_node("/root/Root")
onready var sm : Node = root.get_node("SM");

func _ready():
	sm.get_node("Skip").connect("OnSkip", self, "on_skip_flow");
	connect("OnSkipped", sm.get_node("Skip"), "on_skipped");
	connect("ToNext",sm.get_node("Idle"), "to_next" );

##TODO remake charakter spawn to fit a json format
func build_scene(bg : Texture, charas : Array, scene : int) ->void:
	set_bg(bg);
	_scene = scene;
	var i = 0
	while i < charas.size():
		charas[i].transform = spawns[i];
		add_child(charas[i]);
		move_child(charas[i], 1)
		charas[i].visible = false;
		i+=1;

#sets the background
func set_bg(bg : Texture)->void:
	$Bg.set_texture(bg);


func say(text : String):
	text_box.visible_characters = 0;
	speed = org_speed;
	text_box.text = "";
	# text_box.add_text(text);
	text_box.bbcode_text = text;

func set_speaker(content : String)->void:
	#TODO check if no character is set if the default should be empty or a narrator
	if content:
		$SpeakerBox.visible = true;
	else:
		$SpeakerBox.visible = false;
	speaker_box.text = content;

func build_choice(line : Dictionary):
	var counter = 1
	for choice in line.choices:
		var init_choice : Button = choice_scene.instance();
		init_choice.on_build(choice, counter, line.choice);
		choice_box.add_child(init_choice);
		counter += 1
	sm._change_state("choice");

func on_choice_found(choice : Dictionary):
	choice["scene"] = _scene;
	root.on_save_scene_props(choice);
	get_parent().on_jump(choice.jump)
	var to_kill = choice_box.get_children()
	for node in to_kill:
		node.queue_free()
	sm._change_state('previous');

func flow_text(delta):
	var characters : int = text_box.visible_characters;
	if characters < text_box.get_total_character_count():
		flow = flow + (delta * speed);
	elif characters >= text_box.get_total_character_count() and characters > 0:
		if speed != org_speed:
			speed = org_speed;
		emit_signal("ToNext");
	if flow > 1.0:
		text_box.visible_characters = characters + int(flow);
		flow = 0

func on_skip_flow():
	speed = org_speed *skip_modi;
	emit_signal("OnSkipped");

func _process(delta):
	flow_text(delta);
