extends "res://Scene.gd"


var manager : Node2D;
var astraea : Node2D;


# Called when the node enters the scene tree for the first time.
func _ready():
	var resp = build_scene(get_content());
	var loaded_chars :Array = resp[0];
	content = resp[1].content;
	manager = loaded_chars[0];
	astraea = loaded_chars[1];
	manager.visible = true;
	astraea.visible = true;
	character = {"Astraea" : astraea, "Manager" : manager}
	play_scene()

func get_content()->Dictionary:
	return {
		"scene": 0,
		"bg": "res://Asset/Scenes/BG_GraveHill.png",
		"character": [{"name" : "Manager"}, {"name" :"Astraea"}],
		"bg_music" : "res://Asset/BGMusic/tutorial.ogg",
		"content": {
		  "1": {
			"is_line": true,
			"speaker": "Astraea",
			"mood": "Sad",
			"body": "\u2026\n"
		  },
		  "2": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "\u2026\n"
		  },
		  "3": {
			"is_line": true,
			"speaker": "Astraea",
			"mood": "",
			"body": "\u2026\n"
		  },
		  "4": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "Come on now\u2026 we need to go now, Astraea.\n"
		  },
		  "5": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "Your mother might be looking for you.\n"
		  },
		  "6": {
			"is_line": true,
			"speaker": "Astraea",
			"mood": "",
			"body": "\u2026\n"
		  },
		  "7": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "Poor girl\u2026 She\u2019s doing worse than I thought..."
		  },
		  "8": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "Justine, or Astraea as she is more widely known is my protege."
		  },
		  "9": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "She is a very strong girl who accepted to bond with our city, Acrown and become its protector."
		  },
		  "10": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "However a recent incident, that happened just a few hours ago, shook her to the core."
		  },
		  "11": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "Merax, Astraea\u2019s nemesis, had teamed up with Hedon, a villain from another town to be able to conquer each other\u2019s towns."
		  },
		  "12": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "To be able to fight them back, Astraea also sought help from Estelle, the other from the other town."
		  },
		  "13": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "However Merax was too strong. They were able to conquer Estelle\u2019s town and in an attempt to save Astraea\u2026 Estelle\u2026 she lost her life."
		  },
		  "14": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "I need to find a way to get her talk! But what can I say?"
		  },
		  "15": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "You will now begin negotiation. Try to win the opponent to your side by choosing the right options.\n"
		  },
		  "16": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "Everyone is different. Some may like logical answers while others require a more emotional approach.\n"
		  },
		  "17": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "How will you know what would work best? Gather clues from what others said, the background and even the way others are talking to you.\n"
		  },
		  "18": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "Good luck! Will you be the one to save the hero?\n"
		  },
		  "19": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "This so far the End of the Tutorial,\n The other 2 Scenes are out of order but we still wanted to present them to you\n So please have fun!"
		}
	  }
	}
	  
