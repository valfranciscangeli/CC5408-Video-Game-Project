extends MarginContainer

onready var pinky = $VBoxContainer2/Pinky
onready var wooly = $VBoxContainer2/Wooly
onready var bluey = $VBoxContainer2/Bluey

func _ready():
	pinky.connect("pressed",self,"_on_pinky_pressed")
	wooly.connect("pressed",self,"_on_wooly_pressed")
	bluey.connect("pressed",self,"_on_bluey_pressed")

func _process(delta):

	if Input.is_action_pressed("ui_home"):
		if get_tree().change_scene("res://scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")
			
#	if Input.is_action_pressed("ui_accept"):
#		if get_tree().change_scene("res://scenes/UI/Tutorial/part2.tscn") != OK:
#			print ("An unexpected error occured when trying to switch to the Tutorial part 2 scene")

	
func _on_pinky_pressed():
	if get_tree().change_scene("res://scenes/UI/Tutorial/Heroes/pinkyUI.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Pinky UI scene")
	
func _on_wooly_pressed():
	if get_tree().change_scene("res://scenes/UI/Tutorial/Heroes/woolyUI.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Wooly UI scene")
	
func _on_bluey_pressed():
	if get_tree().change_scene("res://scenes/UI/Tutorial/Heroes/blueyUI.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Bluey UI scene")
