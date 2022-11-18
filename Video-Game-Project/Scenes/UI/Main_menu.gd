extends MarginContainer


# ======= buttons =======

onready var play = $VBoxContainer/VBoxContainer/Play
onready var credits = $VBoxContainer/VBoxContainer/Credits
onready var exit = $VBoxContainer/VBoxContainer/Exit
onready var tutorial = $VBoxContainer/VBoxContainer/Tutorial
onready var map2 = $"VBoxContainer/VBoxContainer/Map 2 (beta)"

# ====== animations =====
onready var animated_pinky = $AnimationsContainer/AnimatedPinky
onready var animated_wooly = $AnimationsContainer/AnimatedWooly
onready var animated_bluey = $AnimationsContainer/AnimatedBluey


func _ready():
	exit.connect("pressed",self,"_on_exit_pressed")
	play.connect("pressed",self,"_on_play_pressed")
	credits.connect("pressed",self,"_on_credits_pressed")
	tutorial.connect("pressed", self, "_on_tutorial_pressed")
	map2.connect("pressed", self, "_on_map3_pressed")
	
	animated_pinky.play("run")
	animated_wooly.play("throw")
	animated_bluey.play("throw")
	
func _on_exit_pressed():
	get_tree().quit()
	
func _on_play_pressed():
	if get_tree().change_scene("res://Scenes/Levels/level01.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Level01 scene")
	
func _on_credits_pressed():
	if get_tree().change_scene("res://Scenes/UI/credits.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Credits scene")
	
func _on_tutorial_pressed():
	if get_tree().change_scene("res://Scenes/UI/Tutorial/part1.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Tutorial part 1 scene")

func _on_map3_pressed():
	if get_tree().change_scene("res://Scenes/Levels/level02.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Level02 scene")
