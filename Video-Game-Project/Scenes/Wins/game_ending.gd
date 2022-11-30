extends Node2D

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the main menu scene")
