extends MarginContainer

onready var pinky = $VBoxContainer2/VBoxContainer/HBoxContainer/Pinky
onready var wooly = $VBoxContainer2/VBoxContainer/HBoxContainer/Wooly
onready var bluey = $VBoxContainer2/VBoxContainer/HBoxContainer/Bluey

# ====== animations =====
onready var animated_pinky = $VBoxContainer2/VBoxContainer/HBoxContainer2/AnimatedPinky
onready var animated_wooly = $VBoxContainer2/VBoxContainer/HBoxContainer2/AnimatedWooly
onready var animated_bluey = $VBoxContainer2/VBoxContainer/HBoxContainer2/AnimatedBluey

func _ready():
	pinky.connect("pressed",self,"_on_pinky_pressed")
	wooly.connect("pressed",self,"_on_wooly_pressed")
	bluey.connect("pressed",self,"_on_bluey_pressed")
	
	animated_pinky.play("walk")
	animated_wooly.play("throw")
	animated_bluey.play("attack")

func _process(_delta):

	if Input.is_action_pressed("ui_home"):
		if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")
			
#	if Input.is_action_pressed("ui_accept"):
#		if get_tree().change_scene("res://Scenes/UI/Tutorial/part2.tscn") != OK:
#			print ("An unexpected error occured when trying to switch to the Tutorial part 2 scene")

	
func _on_pinky_pressed():
	if get_tree().change_scene("res://Scenes/UI/Tutorial/Heroes/pinkyUI.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Pinky UI scene")
	
func _on_wooly_pressed():
	if get_tree().change_scene("res://Scenes/UI/Tutorial/Heroes/woolyUI.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Wooly UI scene")
	
func _on_bluey_pressed():
	if get_tree().change_scene("res://Scenes/UI/Tutorial/blueyUI_select.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Bluey UI select scene")
