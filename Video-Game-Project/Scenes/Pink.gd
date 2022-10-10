extends KinematicBody2D

export var move_right_action := "move_right"
export var move_left_action := "move_left"
export var jump_action := "jump"
export var pick_action := "pick"

# physics variables =======
var velocity = Vector2()

# Physics constans.
var ACCELERATION = 100
var SPEED = 200
var JUMP_SPEED = 300
var GRAVITY = 10

# sprites ========
onready var pivot = $Pivot
onready var sprite = $Pivot/PinkMonsterIdle4
onready var item = $Pivot/Item
onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree
onready var playback = anim_tree.get("parameters/playback")

# Called when the node enters the scene tree for the first time.
func _ready():
	anim_tree.active = true


func _physics_process(delta):
	velocity = move_and_slide(velocity, Vector2.UP)
	
	var move_input = Input.get_axis(move_left_action, move_right_action)
	
	
	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION)
	
	velocity.y += GRAVITY
	
	if is_on_floor() and Input.is_action_just_pressed(jump_action):
		velocity.y = -JUMP_SPEED
	
	# Animations
	
	if Input.is_action_pressed(move_right_action) and not Input.is_action_pressed(move_left_action):
		pivot.scale.x = 1
		item.scale.x = 1
	if Input.is_action_pressed(move_left_action) and not Input.is_action_pressed(move_right_action):
		pivot.scale.x = -1
		item.scale.x = -1
		
	if abs(velocity.x) > 0:
		playback.travel("run")
	else:
		playback.travel("idle")
	
