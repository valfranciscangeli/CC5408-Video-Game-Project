extends Node2D
onready var heroes_container = $HeroesContainer
var my_name = "Pinky"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if heroes_container.get_child_count() == 1:
		var hijo = heroes_container.get_child(0).name
		if hijo == "Pinky":
			if get_tree().change_scene("res://Scenes/UI/Tutorial/YouWin.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the You Win UI scene")
		else:
			# reiniciamos el tutorial
			if get_tree().change_scene("res://Scenes/UI/Tutorial/Heroes/pinkyUI.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Pinky UI scene")
	
	# opcion para salir del juego (tecla escape)
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
		
		# opcion para reiniciar escena
	if Input.is_action_pressed("reset"):
		if get_tree().reload_current_scene() != OK:
			print("Error al recargar escena")
		
		# opcion para ir a menu principal
	if Input.is_action_pressed("ui_home"):
			if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Main Menu scene")
