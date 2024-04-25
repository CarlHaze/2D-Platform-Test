extends Node


func _ready():
	AudioPlayer.play_music_level()

func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scene/level_1.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scene/level_2.tscn")
