extends Area2D

export(int) var id = 0

export(Vector2) var display = Vector2(0, 0)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "teleport")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func teleport(body):
	if body.is_in_group("jugadores"):

		body.global_position = display
		
