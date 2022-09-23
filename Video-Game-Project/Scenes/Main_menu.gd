extends MarginContainer
onready var playmap1 = $VBoxContainer/Playmap1
onready var playmap2 = $VBoxContainer/Playmap2
onready var exit = $VBoxContainer/Exit



func _ready():
	exit.connect("pressed",self,"_on_exit_pressed")
	playmap1.connect("pressed",self,"_on_playmap1_pressed")
	
func _on_exit_pressed():
	get_tree().quit()
func _on_playmap1_pressed():
	get_tree().change_scene("res://scenes/level01.tscn")
	

