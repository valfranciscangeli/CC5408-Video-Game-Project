extends RigidBody2D
onready var collision = get_node("CollisionShape2D")
onready var picked = false
onready var SPEED = 200
var item = null 
export var velocity_to_throw = 10

# limits ===========
onready var sup_izq = ($"../../Limites/PositionIzqUp").global_position
#onready var sup_der = ($"../../Limites/PositionDerUp").global_position
#onready var inf_izq = ($"../../Limites/PositionIzqDown").global_position
onready var inf_der = ($"../../Limites/PositionDerDown").global_position


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
		if linear_velocity.length_squared() < velocity_to_throw : 
			set_collision_layer_bit(3,false)
			
#	# si pasan del limite del mapa se eliminan de la escena
	if global_position.y >= inf_der.y:
		print ('soy un objeto y me cai A')
		queue_free() # eliminamos al objeto del mapa


func _input(_event):
	if _event.is_action_pressed("pick"):
		if picked:
			to_throw_objects("Pinky")
		else:
			pick_objects("Pinky")
	elif _event.is_action_pressed("pick2"):
		if picked:
			to_throw_objects("Wooly")
		else:
			pick_objects("Wooly")
	elif _event.is_action_pressed("pick3"):
		if picked:
			to_throw_objects("Bluey")
		else:
			pick_objects("Bluey")

func to_throw_objects(player_name):
	var bodies = $detector.get_overlapping_bodies()
	for b in bodies:
		if  b.name == player_name:
			#activamos capa de colision de objeto lanzado 
			set_collision_layer_bit(3,true)
			picked = false
			linear_velocity.x = 300 * item.scale.x
			add_collision_exception_with(b)
			yield(get_tree().create_timer(0.2), "timeout")
			remove_collision_exception_with(b)
			

func pick_objects(player_name):
	
	var bodies = $detector.get_overlapping_bodies()
	for b in bodies:
		
		if  b.name == player_name:
			item = b.get_node("Pivot/Item")
			picked = true
	
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
