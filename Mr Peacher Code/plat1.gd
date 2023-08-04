extends KinematicBody2D

const IDLE_DURATION = 1.0

export var move_to = Vector2.UP*192
export var speed = 3.0

onready var platforom = $plat1
onready var tween = $tween

func _ready():
	_init_tween()
	
func _init_tween():
	var duration = move_to.length() / float(speed * Globals.UNIT.SIZE)
	tween.interpolate_property(platform, "position", Vector2.ZERO, move_to, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, IDLE_DURATION)
	tween.interpolate_property(platform, "position", move_to, Vector2.ZERO, move_to, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, duration + IDLE_DURATION * 2)


