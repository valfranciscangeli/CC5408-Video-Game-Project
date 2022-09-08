extends KinematicBody2D


# physics variables =======
var velocity = Vector2()

var ACCELERATION = 100
var SPEED = 200
var JUMP_SPEED = 300
var GRAVITY = 10

# sprites ========
onready var sprite = $PinkyIdle
onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree
onready var playback = anim_tree.get("parameters/playback")

# Called when the node enters the scene tree for the first time.
func _ready():
	anim_tree.active = true


func _physics_process(delta):
	velocity = move_and_slide(velocity, Vector2.UP)
	
	var move_input = Input.get_axis("move_left", "move_right")
	
	
	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION)
	
	velocity.y += GRAVITY
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = -JUMP_SPEED
	
	#Animations
	if abs(velocity.x):
		playback.travel("idle")
