extends Node2D
onready var camara = $FollowerCamera
onready var objetos = $ThrowableObjects
onready var posicion_objetos = $ObjectsPosition
var next_level = 'level 02'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if camara.get_child_count() == 1:
		var hijo = camara.get_child(0).name
		
		if hijo == "Pinky":
			print ("Pinky gana!!")
			Game.add_pinky_wins()
			if get_tree().change_scene("res://Scenes/Wins/Level/Pinky_won_level.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky Won scene")
				
		elif hijo == "Wooly":
			print ("Wooly gana!!")
			Game.add_wooly_wins()
			if get_tree().change_scene("res://Scenes/Wins/Level/Wooly_won_level.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky Won scene")
				
		elif hijo == "Bluey":
			print ("Bluey gana!!")
			Game.add_bluey_wins()
			if get_tree().change_scene("res://Scenes/Wins/Level/Bluey_won_level.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky Won scene")
		
		Game.set_current_level(next_level)
		
	if objetos.get_child_count() == 0:
		respawn_objetos()
		
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

func respawn_objetos():
	var cantidad = posicion_objetos.get_child_count()
	var nuevos_objetos = []
	for _i in range(cantidad):
		var nuevo_objeto = Game.get_random_object()
		nuevo_objeto = nuevo_objeto.instance()
		nuevos_objetos.append(nuevo_objeto)
	var contador = 0
	for posicion in posicion_objetos.get_children():
		nuevos_objetos[contador].position = posicion.position
		objetos.add_child(nuevos_objetos[contador])
		contador+=1
