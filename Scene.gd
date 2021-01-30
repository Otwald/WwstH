extends Control
class_name Scene

signal OnLoaded
signal EndScene

var count : int = 1;
var progress :bool = false
var content : Dictionary;
var character : Dictionary;


onready var root : Node = get_parent()
onready var sm : Node = root.get_node("SM");

func _ready():
	connect("OnLoaded", sm.get_node("MainMenu"), "on_signal");
	connect("EndScene", root, "trigger_end");
	sm.get_node("Idle").connect("OnNext", self, "on_idle_input");

func _process(_delta):
	while progress:
		play_scene()


func on_idle_input():
	progress = true;


func play_scene():
	progress = false
	if not content.has(str(count)):
		emit_signal("EndScene");
		queue_free();
		return
	get_line_content(content[str(count)])
	count += 1
	print(count)

#also checks if the dictionary has the keys choice, condition and jump
func get_line_content(line: Dictionary)-> void:
	on_say(line.body, line.speaker,(line.mood if line.has("mood") else ""));
	if line.has("choices"):
		$Dialog.build_choice(line)
		return
	if line.has('condition'):
		var condi : Dictionary = line.condition;
		var check = root.save_log[condi.scene];
		line.jump = condi["false"]
		if check[condi.props.key] == condi.props.value:
			line.jump = condi["true"]
	if line.has('jump'):
		count = line.jump -1

func on_say(body : String, speaker : String, mood : String = "") ->void:
	$Dialog.set_speaker(speaker)
	if speaker != "":
		var chara = character[speaker]
		chara.change_mood(mood)
	$Dialog.say(body)

func build_scene(scene_content :Dictionary)-> Array:
	var texture : Texture = load(scene_content.bg);
	var loaded : Array = init_chars(scene_content.character);
	$Dialog.build_scene(texture, loaded, scene_content.scene);
	emit_signal("OnLoaded")
	print("Loaded Scene");
	return [loaded, scene_content];

func init_chars(charas : Array) -> Array:
	var out : Array = []
	var all_character : Dictionary = get_node("/root/Root").figures
	for chara in charas:
		var ress_scene = load(all_character[chara]);
		var init_scene = ress_scene.instance();
		out.push_back(init_scene)
	return out;

#used to jump to a specific line in a scene dict
func on_jump(to_jump : int)->void:
	count = to_jump
	play_scene()
