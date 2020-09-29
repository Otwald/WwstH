extends Control
class_name Scene

var count : int = 1;
var progress :bool = false
var content : Dictionary;

func _process(_delta):
	progress = Input.is_action_just_pressed("ui_accept");
	while progress:
		play_scene()

func play_scene():
	var line = content[str(count)];
	if line.is_line:
		$Dialog.say(line.body);
		if line.has('jump'):
			count = line.jump -1
	else:
		$Dialog.build_choice(line)
	count += 1;
	progress = false


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

func on_jump(to_jump : int):
	count = to_jump
	play_scene()
