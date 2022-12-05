extends Node


var theme = load("res://assets/sound effects/Intro Theme.mp3")



func _ready():
	pass 


func play_music():
	$Music.stream = theme 
	$Music.play()

func stop_music():
	$Music.stop()
	
