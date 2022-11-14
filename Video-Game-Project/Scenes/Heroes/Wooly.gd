extends "res://Scenes/Heroes/Pink.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	move_right_action = "move_right2"
	move_left_action = "move_left2"
	jump_action = "jump2"
	pick_action = "pick2"
	my_face = "WoolyFace"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
