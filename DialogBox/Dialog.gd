extends Control


onready var spawns : Array = [$Spawn1.transform, $Spawn2.transform, $Spawn3.transform, $Spawn4.transform]

func build_scene(bg : Texture, charas : Array) ->void:
	set_bg(bg);
	var i = 0
	while i < charas.size():
		charas[i].transform = spawns[i];
		add_child(charas[i]);
		charas[i].visible = false;
		i+=1;


func set_bg(bg : Texture)->void:
	$Bg.set_texture(bg);


func say(text : String):
	$DialogBox/Text.text = text;
