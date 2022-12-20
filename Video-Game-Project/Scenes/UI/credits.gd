extends MarginContainer


var scroll_speed = 1

onready var scroll_container = $ScrollContainer
onready var credits_container = $ScrollContainer/CreditsContainer
var scroll_ended = false

var credits = [
	{ "level": "Vaf Games", "credits": [
		{
			"name": "Francisco Almeida Diaz \n Valeria Franciscangeli \n Marcelo Valenzuela B.",
			"author": "valfranciscangeli.itch.io/happy-fall-friends"
		},
	]},
		{ "level": "Heroes", "credits": [
		{
			"name": "Free Tiny Hero Sprites Pixel Art",
			"author": "free-game-assets.itch.io"
		},
	]},
	{ "level": "Level 01", "credits": [
		{
			"name": "Free Green Zone Tileset Pixel Art",
			"author": "free-game-assets.itch.io"
		},
	]},
	{"level": "Level 02", "credits": [
		{
			"name": "Free Swamp 2D Tileset Pixel Art",
			"author": "free-game-assets.itch.io"
		}
	 ]},
{"level": "Level 03", "credits": [
		{
			"name": "Pixel Crystal Cave Tileset",
			"author": "joel-sleppy.itch.io"
		}
	 ]},
{"level": "Objects", "credits":[
		{
			"name": "Pixel Mart",
			"author": "ghostpixxells.itch.io"
		}
]},
{"level": "Music", "credits": [
		{
			"name": "Victory!",
			"author": "opengameart.org/users/jkfite01"
		},
		{
			"name": "Platformer Game Music Pack",
			"author": "opengameart.org/users/codemanu"
		},
		{
			"name": "8-bit / 16-bit Sound Effects (x25) Pack",
			"author": "jdwasabi.itch.io"
		}		
	 ]},
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
	yield(get_tree().create_timer(1.1), "timeout")
	set_physics_process(true)


func _physics_process(_delta):
	var last_scroll = scroll_container.scroll_vertical
	scroll_container.scroll_vertical += scroll_speed
	var new_scroll = scroll_container.scroll_vertical
	if last_scroll == new_scroll:
		_to_main_menu()
		

func _create_label_level(text) -> Label:
	var label = Label.new()
	label.text = text
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
	label.theme_type_variation = "SmallLabel"
	return label
	
func _create_label_author(text) -> Label:
	var label = Label.new()
	label.text = text
	label.align = Label.ALIGN_CENTER
	label.autowrap = true
	label.theme_type_variation = "SmallLabelPink"
	return label

func _to_main_menu():
	if not scroll_ended:
		scroll_ended = true
		yield(get_tree().create_timer(2), "timeout")
		if get_tree().change_scene("res://Scenes/UI/Main_menu.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Main Menu scene")



