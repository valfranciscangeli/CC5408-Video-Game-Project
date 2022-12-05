extends MarginContainer

var scroll_speed = 1

onready var scroll_container = $ScrollContainer
onready var credits_container = $ScrollContainer/TextContainer
var scroll_ended = false

func _ready():
	scroll_container.scroll_vertical = 0
	set_physics_process(false)
	yield(get_tree().create_timer(1.2), "timeout")
	set_physics_process(true)

func _physics_process(_delta):
	var last_scroll = scroll_container.scroll_vertical
	scroll_container.scroll_vertical += scroll_speed
	var new_scroll = scroll_container.scroll_vertical
	if last_scroll == new_scroll:
		_to_next_part()
	
	
	# opcion para salir del juego (tecla escape)
	if Input.is_action_pressed("ui_home"):
		if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")
			
	if Input.is_action_pressed("ui_accept"):
		if get_tree().change_scene("res://Scenes/UI/Tutorial/part2.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Tutorial part 2 scene")

func _to_next_part():
	if not scroll_ended:
		scroll_ended = true
		yield(get_tree().create_timer(2), "timeout")
		if get_tree().change_scene("res://Scenes/UI/Tutorial/part2.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Tutorial Part 2 scene")


