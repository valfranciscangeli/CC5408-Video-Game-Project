extends KinematicBody2D

var debuggear = false

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

var COYOTE_TIME = 0.1
var airborn_time = 0

# limits ===========
onready var sup_izq = ($"../../Limites/PositionIzqUp").global_position
#onready var sup_der = ($"../../Limites/PositionDerUp").global_position
#onready var inf_izq = ($"../../Limites/PositionIzqDown").global_position
onready var inf_der = ($"../../Limites/PositionDerDown").global_position

# sprites ========
onready var pivot = $Pivot
onready var sprite = $Pivot/Sprite
onready var item = $Pivot/Item
onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree
onready var playback = anim_tree.get("parameters/playback")
onready var dust = $Pivot/Dust

# contador items ========
onready var contador_canvas = "../../Contador/GridContainer"
onready var my_face = "PinkyFaceButton"
var color_of_death = '#2f2c2c'

# contador victorias ======
var my_wins = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	anim_tree.active = true
	print(dust)
	
	#Engine.time_scale = 0.1


func _physics_process(delta):
	velocity = move_and_slide(velocity, Vector2.UP, false,4,0.785398,false)
	
	var move_input = Input.get_axis(move_left_action, move_right_action)
	
	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION)
	
	velocity.y += GRAVITY
	
	if is_on_floor():
		airborn_time = 0
	else:
		airborn_time += delta
	
	if debuggear:
		if (is_on_floor() or airborn_time <= COYOTE_TIME):
			sprite.modulate = Color.green
		else:
			sprite.modulate = Color.red
	
	if (is_on_floor() or airborn_time <= COYOTE_TIME) and Input.is_action_just_pressed(jump_action):
		velocity.y = -JUMP_SPEED
		airborn_time = COYOTE_TIME

	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.collision_layer == 12:
			var object: RigidBody2D = collision.collider 
			if object.linear_velocity.length() > 20:
				var direction = object.linear_velocity.normalized()
				velocity = direction * SPEED * 4 
		#codigo que determina el comportamiento de los objetos trampolines 
		if collision.collider.collision_layer == 16:
			var object: Node2D = collision.collider
			var direction = (global_position - object.global_position).normalized()
			velocity = direction * SPEED * 3
	#-------------------------------------------------------------------
	
	# si pasan del limite del mapa se eliminan de la escena
	if global_position.y >= inf_der.y:
		get_node(contador_canvas+"/"+my_face).modulate = color_of_death # "apagamos" su carita de los personajes en mapa
		queue_free() # eliminamos al personaje del mapa
	
	dust.visible = is_on_floor() and abs(velocity.x) > 5
	
	# Animations
	
	if Input.is_action_pressed(move_right_action) and not Input.is_action_pressed(move_left_action):
		pivot.scale.x = 1
		item.scale.x = 1
	if Input.is_action_pressed(move_left_action) and not Input.is_action_pressed(move_right_action):
		pivot.scale.x = -1
		item.scale.x = -1
		
	if abs(velocity.x) > 0 and is_on_floor():
		playback.travel("run")
		
	elif abs(velocity.x) == 0 and is_on_floor():
		playback.travel("idle")
	elif velocity.y < 0:
		playback.travel("Jump_up")
	else:
		playback.travel("jump_down")
		


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("reset"):
		if get_tree().reload_current_scene() != OK:
			print("Error al recargar escena")
	if event.is_action_pressed("quit"):
		if get_tree().quit() != OK:
			print("Error al salir del juego")


