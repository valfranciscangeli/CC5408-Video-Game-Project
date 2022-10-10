extends MarginContainer
onready var play = $VBoxContainer/Play
onready var credits = $VBoxContainer/Credits
onready var exit = $VBoxContainer/Exit



func _ready():
	exit.connect("pressed",self,"_on_exit_pressed")
	play.connect("pressed",self,"_on_play_pressed")
	credits.connect("pressed",self,"_on_credits_pressed")
	
func _on_exit_pressed():
	get_tree().quit()
func _on_play_pressed():
	get_tree().change_scene("res://scenes/level01.tscn")
	
func _on_credits_pressed():
	get_tree().change_scene("res://scenes/credits.tscn")
