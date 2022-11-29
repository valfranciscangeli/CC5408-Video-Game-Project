extends Node2D
onready var camara = $FollowerCamera
var next_level = 'level 02'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if camara.get_child_count() == 1:
		var hijo = camara.get_child(0).name
		if hijo == "Pinky":
			print ("Pinky gana!!")
			Game.add_pinky_wins()
#			pinky_wins_scene()
			if get_tree().change_scene("res://Scenes/Wins/Pinky_won_level.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky Won scene")
		elif hijo == "Wooly":
			print ("Wooly gana!!")
			Game.add_wooly_wins()
			if get_tree().change_scene("res://Scenes/Wins/Wooly_won_level.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky Won scene")
		elif hijo == "Bluey":
			print ("Bluey gana!!")
			Game.add_bluey_wins()
			if get_tree().change_scene("res://Scenes/Wins/Bluey_won_level.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky Won scene")
		
		Game.set_current_level(next_level)
		
	
	# inputs de manejo del juego =========================
	
	# opcion para salir del juego (ESC)
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

	# opcion para reiniciar nivel (R)
	if Input.is_action_just_pressed("reset"):
		if get_tree().reload_current_scene() != OK:
			print ("An unexpected error occured when trying to reload this scene")

	# opcion para volver al menu principal (M)
	if Input.is_action_just_pressed("ui_home"):
		if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")

