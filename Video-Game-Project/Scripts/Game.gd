extends Node

# =========== wins de los personajes ======== :
var _pinky_wins = 0
var _wooly_wins = 0
var _bluey_wins = 0
var _objects = 0

# ================= niveles ============== :
var levels = {'level 01': "res://Scenes/Levels/level01.tscn",
				'level 02': "res://Scenes/Levels/level02.tscn",
				'level 03': "res://Scenes/Levels/level03.tscn"}

var current_level = 'level 01'

# ================= objetos ============== :
var objects = {'banana': preload("res://Scenes/Items/banana.tscn"),
				'coffe bag': preload("res://Scenes/Items/coffee_bag.tscn"),
				'detergent': preload("res://Scenes/Items/detergent.tscn"),
				'meat': preload("res://Scenes/Items/meat.tscn"), 
				'rubber duck': preload("res://Scenes/Items/rubber_duck.tscn")}

# setters y getters ===============================================
func add_pinky_wins():
	_pinky_wins = _pinky_wins +1

func add_wooly_wins():
	_wooly_wins = _wooly_wins +1

func add_bluey_wins():
	_bluey_wins = _bluey_wins +1

func get_pinky_wins():
	return _pinky_wins

func get_wooly_wins():
	return _wooly_wins

func get_bluey_wins():
	return _bluey_wins

func add_object():
	_objects += 1

func sub_object():
	_objects -= 1

func get_objects_count():
	return _objects

func set_current_level(level):
	current_level = level
	
func get_current_level_path():
	return levels[current_level]
	
func get_random_object():
	var objetos = objects.keys()
	var objeto = objetos[randi() % objetos.size()]
	objeto = objects[objeto]
	return objeto

func reset_wins():
	_pinky_wins = 0
	_bluey_wins=0
	_wooly_wins=0
