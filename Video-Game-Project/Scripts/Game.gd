extends Node

# wins de los personajes
var _pinky_wins = 0
var _wooly_wins = 0
var _bluey_wins = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print ("Wins: \n")
	print("Pinky:", _pinky_wins, "\n")
	print("Wooly:", _wooly_wins, "\n")
	print("Bluey:", _bluey_wins, "\n")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
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
