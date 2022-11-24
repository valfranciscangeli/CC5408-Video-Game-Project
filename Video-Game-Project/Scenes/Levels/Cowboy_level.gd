extends Node2D
onready var camara = $FollowerCamera

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if camara.get_child_count() == 1:
		var hijo = camara.get_child(0).name
		if hijo == "Pinky":
			print ("Pinky gana!!")
			Game.add_pinky_wins()
		elif hijo == "Wooly":
			print ("Wooly gana!!")
			Game.add_wooly_wins()
		elif hijo == "Bluey":
			print ("Bluey gana!!")
			Game.add_bluey_wins()
		
		# cambiamos a escena de que el nivel terminó
		if get_tree().change_scene("res://Scenes/Wins/FinNivelCowboy.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Fin Nivel Cowboy scene")
	
	# opcion para salir del juego (tecla escape)
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
