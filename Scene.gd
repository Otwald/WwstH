extends Control
class_name Scene


func build_scene(bg, chars, scene)-> Array:
	var dict : Dictionary;
	var texture : Texture = load(bg);
	var loaded : Array = init_chars(chars);
	$Dialog.build_scene(texture, loaded);
	var file = File.new()
	file.open("res://"+scene+"/"+scene+".json", file.READ)
	var text = file.get_as_text()
	dict = parse_json(text)
	file.close()
	print("Loaded Scene");
	return [loaded, dict];

func init_chars(charas : Array) -> Array:
	var out : Array = []
	for chara in charas:
		var ress_scene = load(chara);
		var init_scene = ress_scene.instance();
		out.push_back(init_scene)
	return out;
