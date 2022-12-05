extends Node2D

onready var next_level = Game.get_current_level_path()


func _process(_delta):
	if Game.get_pinky_wins() >= 3:
		if get_tree().change_scene("res://Scenes/Wins/Game/Pinky_won_game.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Pinky won game scene")

	elif Game.get_wooly_wins() >= 3:
		if get_tree().change_scene("res://Scenes/Wins/Game/Wooly_won_game.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Wooly won game scene")

	elif Game.get_bluey_wins() >= 3:
		if get_tree().change_scene("res://Scenes/Wins/Game/Bluey_won_game.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the WBluey won game scene")

	elif Input.is_action_pressed("ui_accept"):
		if get_tree().change_scene(next_level) != OK:
			print ("An unexpected error occured when trying to switch to the next level scene: "+ next_level)
