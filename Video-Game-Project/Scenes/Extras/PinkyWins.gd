extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = str(Game.get_pinky_wins())+"  "

