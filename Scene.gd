extends Control
class_name Scene

signal OnLoaded

var count : int = 1;
var progress :bool = false
var content : Dictionary;
var character : Dictionary;


onready var root : Node = get_parent()
onready var sm : Node = root.get_node("SM");

func _ready():
	connect("OnLoaded", sm.get_node("MainMenu"), "on_signal");
	sm.get_node("Idle").connect("OnNext", self, "on_idle_input");

func _process(_delta):
	while progress:
		play_scene()


func on_idle_input():
	progress = true;


func play_scene():
	progress = false
	if not content.has(str(count)):
		on_say("Thanks for Playing this Prototype, and stay tuned for new updates", "", "")
		root.find_node("TitleScreen").on_end()
		queue_free()
		return
	var line = content[str(count)];
	if line.has('condition'):
		var condi : Dictionary = line.condition;
		var check = root.save_log[condi.scene];
		if check[condi.props.key] == condi.props.value:
			count = condi["true"]
		else:
			count = condi["false"]
	if line.is_line:
		on_say(line.body, line.speaker, line.mood);
		if line.has('jump'):
			count = line.jump -1
	else:
		$Dialog.build_choice(line)
	print(count)
	count += 1;

func on_say(body : String, speaker : String, mood : String) ->void:
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
