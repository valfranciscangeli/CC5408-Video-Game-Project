extends MarginContainer
onready var play = $VBoxContainer/Play
onready var credits = $VBoxContainer/Credits
onready var exit = $VBoxContainer/Exit
onready var tutorial = $VBoxContainer/Tutorial



func _ready():
	exit.connect("pressed",self,"_on_exit_pressed")
	play.connect("pressed",self,"_on_play_pressed")
	credits.connect("pressed",self,"_on_credits_pressed")
	tutorial.connect("pressed", self, "_on_tutorial_pressed")
	
func _on_exit_pressed():
	get_tree().quit()
	
func _on_play_pressed():
	if get_tree().change_scene("res://scenes/Levels/level01.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Level01 scene")
	
func _on_credits_pressed():
	if get_tree().change_scene("res://scenes/UI/credits.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Credits scene")
	
func _on_tutorial_pressed():
	if get_tree().change_scene("res://scenes/UI/Tutorial/part1.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Tutorial part 1 scene")
