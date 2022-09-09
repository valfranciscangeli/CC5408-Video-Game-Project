extends KinematicBody2D

var velocity = Vector2()

# Physics constans.
var ACCELERATION = 100
var SPEED = 200
var JUMP_SPEED = 300
var GRAVITY = 10

onready var pivot = $Pivot
onready var anim_tree = $AnimationTree
onready var playback = anim_tree.get("parameters/playback")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	anim_tree.active = true # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	velocity = move_and_slide(velocity, Vector2.UP)
	
	var move_input = Input.get_axis("move_left", "move_right")
	
	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION)
	
	velocity.y += GRAVITY
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = -JUMP_SPEED
	
	# Animations
	
	if Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		pivot.scale.x = 1
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		pivot.scale.x = -1
		
	if abs(velocity.x) > 10:
		playback.travel("run")
	else:
		playback.travel("idle")
