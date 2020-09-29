extends Control
class_name Scene

var count : int = 1;
var progress :bool = false
var content : Dictionary;
var character : Dictionary;

onready var root : Node = get_parent()

func _process(_delta):
	progress = Input.is_action_just_pressed("ui_accept");
	while progress:
		play_scene()

func play_scene():
	var line = content[str(count)];
	if line.is_line:
		on_say(line.body, line.speaker, line.mood);
		if line.has('jump'):
			count = line.jump -1
	else:
		$Dialog.build_choice(line)
	count += 1;
	progress = false

func on_say(body : String, speaker : String, mood : String) ->void:
	$Dialog.set_speaker(speaker)
	if speaker != "":
		var chara = character[speaker]
	$Dialog.say(body)

func build_scene(scene)-> Array:
	var scene_content : Dictionary = load_json(scene);
	var texture : Texture = load(scene_content.bg);
	var loaded : Array = init_chars(scene_content.character);
	$Dialog.build_scene(texture, loaded);
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

func load_json(scene)->Dictionary:
	var dict : Dictionary;
	var file = File.new()
	file.open("res://"+scene+"/"+scene+".json", file.READ)
	var text = file.get_as_text()
	dict = parse_json(text)
	file.close()
	return dict

#used to jump to a specific line in a scene dict
func on_jump(to_jump : int)->void:
	count = to_jump
	play_scene()
