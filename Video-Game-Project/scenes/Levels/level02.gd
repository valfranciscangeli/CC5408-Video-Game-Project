extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print ("Wins: \n")
	print("Pinky:", Game.get_pinky_wins(), "\n")
	print("Wooly:", Game.get_wooly_wins(), "\n")
	print("Bluey:", Game.get_bluey_wins(), "\n")
	
	#temporal:
	if get_tree().change_scene("res://Scenes/Levels/level01.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Level01 scene")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
