extends Control


var sound_on = preload("res://ice_buttons/g114613.png")
var sound_off = preload("res://ice_buttons/g114716.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	$SoundOff.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	get_tree().change_scene("res://Level1.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_HowToPlay_pressed():
	get_tree().change_scene("res://HowToPlay.tscn")


func _on_Participants_pressed():
	get_tree().change_scene("res://Participants.tscn")


func _on_SoundOff_pressed():
	$"/root/BgMusic".play()
	$SoundOn.visible = true
	$SoundOff.visible = false


func _on_SoundOn_pressed():
	$"/root/BgMusic".stop()
	$SoundOn.visible = false
	$SoundOff.visible = true
