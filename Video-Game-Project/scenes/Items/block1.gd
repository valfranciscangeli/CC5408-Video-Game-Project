extends RigidBody2D
onready var collision = get_node("CollisionShape2D")
onready var picked = false
onready var SPEED = 200
onready var item = null
export var velocity_to_throw = 100



func _integrate_forces(_state):
	rotation_degrees = 10

func _physics_process(_delta):
	if picked == true:
		collision.disabled = true
		self.position = item.global_position
		sleeping = true
		if linear_velocity.length_squared() < velocity_to_throw : 
			set_collision_layer_bit(3,false)
			
	else:
		collision.disabled = false
		sleeping = false

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
				
	
#funciones necesarias para tomar y arrojar objetos 
func to_throw_objects(player_name):
	var bodies = $detector.get_overlapping_bodies()
	for b in bodies:
		if  b.name == player_name:
			#activamos capa de colision de objeto lanzado 
			set_collision_layer_bit(3,true)
			picked = false
			linear_velocity.x = 200 * item.scale.x

func pick_objects(player_name):
	
	var bodies = $detector.get_overlapping_bodies()
	for b in bodies:
		
		if  b.name == player_name:
			item = b.get_node("Pivot/Item")
			picked = true
#---------------------------------------------------------
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
