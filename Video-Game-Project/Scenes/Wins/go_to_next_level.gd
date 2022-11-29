extends Node2D

onready var next_level = Game.get_current_level_path()


func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
		if get_tree().change_scene(next_level) != OK:
			print ("An unexpected error occured when trying to switch to the next level scene: "+ next_level)
