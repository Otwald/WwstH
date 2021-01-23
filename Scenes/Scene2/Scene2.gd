extends Scene

var manager : Node2D;
var mayor: Node2D

func _ready():
	var resp = build_scene(get_content());
	var loaded_chars :Array = resp[0];
	content = resp[1].content;
	manager = loaded_chars[0];
	mayor = loaded_chars[1];
	manager.visible = true;
	mayor.visible = true;
	character = {"Mayor Orden" : mayor, "Manager" : manager}
	play_scene()

func get_content()->Dictionary:
	return {
		"scene": 2,
		"bg": "res://Asset/Scenes/BG_MayorOffice.png",
		"character": ["Manager", "Mayor"],
		"content": {

		}
	}