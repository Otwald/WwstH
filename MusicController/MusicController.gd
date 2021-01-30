extends Control


onready var _music = $AudioStreamPlayer

func play(track_url: String)->void:
	var new_track = load(track_url)
	_music.stream=new_track
	_music.play()

func stop()->void:
	_music.stop()