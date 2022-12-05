extends Node


var theme = load("res://assets/sound effects/Intro Theme.mp3")

var theme_caida = load("res://assets/sound effects/caida.wav")

func _ready():
	pass 


func play_music():
	$Music.stream = theme 
	$Music.play()

func stop_music():
	$Music.stop()
	
func play_musicFall():
	$Music1.stream = theme_caida
	$Music1.play()
	
	
