extends RigidBody2D
onready var collision = get_node("CollisionShape2D")
onready var picked = false
onready var SPEED = 200
onready var item = get_node("../FollowerCamera/Pinky/Pivot/Item")

func _integrate_forces(_state):
	rotation_degrees = 10

func _physics_process(_delta):
	if picked == true:
		collision.disabled = true
		self.position = item.global_position
		sleeping = true
		
	else:
		collision.disabled = false
		sleeping = false

func _input(_event):
	if Input.is_action_just_pressed("pick") and picked == false:
		var bodies = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Pinky" and picked == false:
				picked = true
	elif Input.is_action_just_pressed("pick") and picked == true:
		var bodies = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Pinky" and picked == true:
				picked = false
				self.linear_velocity.x = 200 * item.scale.x
				

		
		

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
