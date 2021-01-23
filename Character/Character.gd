extends Node2D
class_name Character

var mood_range : Dictionary = {"neutral" :0, "sad":1,"shocked":2,"happy" : 3,"annoyed":4, "pensive":5, "confused" :5, "unique":6 }

func change_mood(new_mood : String)->void:
	var frame = 0
	if mood_range.has(new_mood.to_lower()):
		frame = mood_range[new_mood.to_lower()]
	$Sprite.frame = frame
