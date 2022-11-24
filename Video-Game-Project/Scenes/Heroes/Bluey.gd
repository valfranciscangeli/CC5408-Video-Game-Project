extends "res://Scenes/Heroes/Pink.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	move_right_action = "move_right3"
	move_left_action = "move_left3"
	jump_action = "jump3"
	pick_action = "pick3"
	my_face = "BlueyFaceButton"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
