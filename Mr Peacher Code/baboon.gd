extends KinematicBody2D

var picked = false


func _physics_process(delta):
	print(self.position)
	if picked == true:
		self.position = get_node("../Player/Position2D").global_position


func _input(event):
	if Input.is_action_pressed("e"):
		var bodeis = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "player" and picked == false:
				picked = true
