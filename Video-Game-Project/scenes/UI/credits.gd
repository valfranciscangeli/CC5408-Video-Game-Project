extends MarginContainer


var scroll_speed = 1

onready var scroll_container = $ScrollContainer
onready var credits_container = $ScrollContainer/CreditsContainer
var scroll_ended = false

var credits = [
	{ "level": "01", "credits": [
		{
			"name": "Free Green Zone Tileset Pixel Art",
			"author": "free-game-assets.itch.io"
		},
		{
			"name": "Pixel Mart",
			"author": "ghostpixxells.itch.io"
		},
#		{
#			"name": "Crafting Materials",
#			"author": "beast-pixels.itch.io"
#		}
	]},
#	{"level": "02", "credits": [
#		{
#			"name": "DOS-88 Synthwave Music Library",
#			"author": "dos88.itch.io"
#		},
#		{
#			"name": "Starry Space Parallaxing Background",
#			"author": "enjl.itch.io"
#		},
#		{
#			"name": "Crafting Materials",
#			"author": "beast-pixels.itch.io"
#		}
#	 ]},
]

func _ready():
	for level in credits:
#		aqui hacer label del nivel con el atributo "level"
		var h_separator_l = HSeparator.new()

		var level_label = _create_label_level(level.level)

		credits_container.add_child(h_separator_l)
		credits_container.add_child(level_label)
		
		for credit in level.credits:
			print(credit)
			var h_separator = HSeparator.new()
			h_separator.theme_type_variation = "SmallHSeparator"

			var name_label = _create_label_name(credit.name)
			var author_label = _create_label_author(credit.author)

			credits_container.add_child(h_separator)
			credits_container.add_child(name_label)
			credits_container.add_child(author_label)

	scroll_container.scroll_vertical = 0
	set_physics_process(false)
	yield(get_tree().create_timer(1.2), "timeout")
	set_physics_process(true)


func _physics_process(_delta):
	var last_scroll = scroll_container.scroll_vertical
	scroll_container.scroll_vertical += scroll_speed
	var new_scroll = scroll_container.scroll_vertical
	if last_scroll == new_scroll:
		_to_main_menu()
		

func _create_label_level(text) -> Label:
	var label = Label.new()
	label.text = "Level " + text
	label.align = Label.ALIGN_CENTER
	label.uppercase = true
	label.autowrap = true
	label.theme_type_variation = "label3"
	return label

func _create_label_name(text) -> Label:
	var label = Label.new()
	label.text = text
	label.align = Label.ALIGN_CENTER
	label.uppercase = true
	label.autowrap = true
	label.theme_type_variation = "Label2"
	return label
	
func _create_label_author(text) -> Label:
	var label = Label.new()
	label.text = text
	label.align = Label.ALIGN_CENTER
	label.autowrap = true
	label.theme_type_variation = "Label2"
	return label

func _to_main_menu():
	if not scroll_ended:
		scroll_ended = true
		yield(get_tree().create_timer(2), "timeout")
		if get_tree().change_scene("res://scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")



