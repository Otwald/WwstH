extends Control
class_name Scene


func build_scene(bg, chars)-> Array:
	var texture : Texture = load(bg);
	var loaded : Array = init_chars(chars);
	$Dialog.build_scene(texture, loaded);
	print("Loaded Scene");
	return loaded;

func init_chars(charas : Array) -> Array:
	var out : Array = []
	for chara in charas:
		var ress_scene = load(chara);
		var init_scene = ress_scene.instance();
		out.push_back(init_scene)
	return out;
