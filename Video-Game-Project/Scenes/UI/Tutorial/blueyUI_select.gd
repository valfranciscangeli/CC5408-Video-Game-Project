extends MarginContainer

onready var js = $VBoxContainer2/VBoxContainer/HBoxContainer/Joystick
onready var kb = $VBoxContainer2/VBoxContainer/HBoxContainer/Keyboard

# ====== animations =====
onready var animated_bluey = $VBoxContainer2/VBoxContainer/HBoxContainer2/AnimatedBluey

func _ready():
	js.connect("pressed",self,"_on_js_pressed")
	kb.connect("pressed",self,"_on_kb_pressed")
	
	animated_bluey.play("throw")

func _process(_delta):

	if Input.is_action_pressed("ui_home"):
		if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")
			
#	if Input.is_action_pressed("ui_accept"):
#		if get_tree().change_scene("res://Scenes/UI/Tutorial/part2.tscn") != OK:
#			print ("An unexpected error occured when trying to switch to the Tutorial part 2 scene")

	
func _on_js_pressed():
	if get_tree().change_scene("res://Scenes/UI/Tutorial/Heroes/blueyUI_xbox.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Pinky UI scene")
	
func _on_kb_pressed():
	if get_tree().change_scene("res://Scenes/UI/Tutorial/Heroes/blueyUI.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Wooly UI scene")
