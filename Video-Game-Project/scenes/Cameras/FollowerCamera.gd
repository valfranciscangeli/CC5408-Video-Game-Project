extends Camera2D

export(float, 0.1, 0.5) var zoom_offset : float = 0.2
export var debug_mode : bool = false

var camera_rect : = Rect2()
var viewport_rect : = Rect2()


onready var sup_izq = ($"../Limites/PositionIzqUp").global_position
#onready var sup_der = ($"../Limites/PositionDerUp").global_position
#onready var inf_izq = ($"../Limites/PositionIzqDown").global_position
onready var inf_der = ($"../Limites/PositionDerDown").global_position



func _ready() -> void:
	viewport_rect = get_viewport_rect()
	print(inf_der)
	print(sup_izq)
	set_process(get_child_count() > 0)



func _process(_delta: float) -> void:
	camera_rect = Rect2(get_child(0).global_position, Vector2())
	
	for index in get_child_count():
		if index == 0:
			continue
		camera_rect = camera_rect.expand(get_child(index).global_position)
		
	var pos = camera_rect.position
	var end = camera_rect.end
	
	pos.x = clamp (pos.x,  sup_izq.x, inf_der.x)
	pos.x = clamp (pos.y,  sup_izq.y, inf_der.y)
	end.x = clamp (end.x,  sup_izq.x, inf_der.x)
	end.y = clamp (end.y,  sup_izq.y, inf_der.y)
	
	camera_rect = Rect2(pos, end-pos)
	
	offset = calculate_center(camera_rect)
	zoom = calculate_zoom(camera_rect, viewport_rect.size)
	
	if debug_mode:
		update()


func calculate_center(rect: Rect2) -> Vector2:
	return Vector2(
		rect.position.x + rect.size.x / 2,
		rect.position.y + rect.size.y / 2)


func calculate_zoom(rect: Rect2, viewport_size: Vector2) -> Vector2:
	var max_zoom = max(
		max(1, rect.size.x / viewport_size.x + zoom_offset),
		max(1, rect.size.y / viewport_size.y  + zoom_offset))
	return Vector2(max_zoom, max_zoom)


func _draw() -> void:
	if not debug_mode:
		return
	draw_rect(camera_rect, Color("#ffffff"), false)
	draw_circle(calculate_center(camera_rect), 5, Color("#ffffff"))
