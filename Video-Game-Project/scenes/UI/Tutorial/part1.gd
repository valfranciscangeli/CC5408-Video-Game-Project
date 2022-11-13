extends MarginContainer


func _process(delta):
	
	# opcion para salir del juego (tecla escape)
	if Input.is_action_pressed("ui_home"):
		if get_tree().change_scene("res://scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")
			
	if Input.is_action_pressed("ui_accept"):
		if get_tree().change_scene("res://scenes/UI/Tutorial/part2.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Tutorial part 2 scene")

