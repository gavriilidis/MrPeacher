extends KinematicBody2D

signal help_changed
signal pause_label


var velocity = Vector2(0,0)
var state = "normal"
const SPEED = 200
const GRAVITY = 30
const JUMPFORCE = -900


func _physics_process(delta):
	
	if state == "normal":

		if Input.is_action_pressed("right"):
			if not $Soundwalk.is_playing() and is_on_floor():
				$Soundwalk.play()
			velocity.x = SPEED
			$Sprite.play("walk")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("left"):
			if not $Soundwalk.is_playing() and is_on_floor():
				$Soundwalk.play()
			velocity.x = -SPEED
			$Sprite.play("walk")
			$Sprite.flip_h = true
			
				
		else:
			$Soundwalk.stop()
			$Sprite.play("front")
		
		if not is_on_floor():
			$Sprite.play("jump")
			$Soundwalk.stop()
	
		velocity.y = velocity.y + GRAVITY
	
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMPFORCE
			$Soundwalk.stop()
			$SoundJump.play()
		
		velocity = move_and_slide(velocity, Vector2.UP)
	
		velocity.x = lerp(velocity.x,0,0.25)
		

	if state == "balloon":
		
		GRAVITY == 5
		
		if Input.is_action_pressed("right"):
			velocity.x = SPEED
			
			$Sprite.play("balloon")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("left"):
			velocity.x = -SPEED
			$Sprite.play("balloon")
			$Sprite.flip_h = true
	
		


		velocity.y = velocity.y + GRAVITY
	
		
		velocity = move_and_slide(velocity, Vector2.UP)
	
		velocity.x = lerp(velocity.x,0,0.25)
		

	
func _on_Fallzone_body_entered(body):
	$SoundFallZone.play()
	get_tree().paused = true
	if VarHelp.help != 0:
		var help_dialog = Dialogic.start("/Help")
		help_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
		help_dialog.connect("timeline_end", self, "unpause")
		add_child(help_dialog)
		help_dialog.connect("dialogic_signal", self, "dialogic_signal")
		VarHelp.help -= 1
		emit_signal("help_changed")
		if $Sprite.global_position.x < 7000:
			$Sprite.global_position.x = 2400
			$Sprite.global_position.y = 405
			$CollisionShape2D.global_position.x = 2400
			$CollisionShape2D.global_position.y = 405
			$Camera2D.global_position.x = 2400
			$Camera2D.global_position.y = 405
		else:
			$Sprite.global_position.x = 10465
			$Sprite.global_position.y = 468
			$CollisionShape2D.global_position.x = 10465
			$CollisionShape2D.global_position.y = 468
			$Camera2D.global_position.x = 10465
			$Camera2D.global_position.y = 468
	else:
		randomize()
		var question = randi() % 25 + 1
		#print(question)
		if Questionlist.list.has(question):
			Questionlist.list.erase(question)
			#print(Questionlist.list)
			if question == 1:
				var new_dialog = Dialogic.start("/1st question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 2:
				var new_dialog = Dialogic.start("/2nd question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 3:
				var new_dialog = Dialogic.start("/3rd question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 4:
				var new_dialog = Dialogic.start("/4th guestion")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 5:
				var new_dialog = Dialogic.start("/5th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 6:
				var new_dialog = Dialogic.start("/6th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 7:
				var new_dialog = Dialogic.start("/7th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 8:
				var new_dialog = Dialogic.start("/8th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 9:
				var new_dialog = Dialogic.start("/9th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 10:
				var new_dialog = Dialogic.start("/10th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 11:
				var new_dialog = Dialogic.start("/11th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 12:
				var new_dialog = Dialogic.start("/12th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 13:
				var new_dialog = Dialogic.start("/13th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 14:
				var new_dialog = Dialogic.start("/14th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 15:
				var new_dialog = Dialogic.start("/15th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 16:
				var new_dialog = Dialogic.start("/16th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 17:
				var new_dialog = Dialogic.start("/17th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 18:
				var new_dialog = Dialogic.start("/18th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 19:
				var new_dialog = Dialogic.start("/19th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 20:
				var new_dialog = Dialogic.start("/20th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 21:
				var new_dialog = Dialogic.start("/21st question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 22:
				var new_dialog = Dialogic.start("/22nd question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 23:
				var new_dialog = Dialogic.start("/23rd question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 24:
				var new_dialog = Dialogic.start("/24th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
			elif question == 25:
				var new_dialog = Dialogic.start("/25th question")
				new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
				new_dialog.connect("timeline_end", self, "unpause")
				add_child(new_dialog)
				new_dialog.connect("dialogic_signal", self, "dialogic_signal")
		elif Questionlist.list.size() != 0:
			_on_Fallzone_body_entered(body)
		elif Questionlist.list.size() == 0:
			Questionlist.list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
			_on_Fallzone_body_entered(body)
			
			
func dialogic_signal(argument):
	if argument == "wrong_ans":
		get_tree().change_scene("res://Level" + str(int(get_tree().current_scene.name) + 0) + ".tscn")
		emit_signal("not_sofo")
	else:
		if $Sprite.global_position.x < 7000:
			$Sprite.global_position.x = 2400
			$Sprite.global_position.y = 405
			$CollisionShape2D.global_position.x = 2400
			$CollisionShape2D.global_position.y = 405
			$Camera2D.global_position.x = 2400
			$Camera2D.global_position.y = 405
		else:
			$Sprite.global_position.x = 10465
			$Sprite.global_position.y = 468
			$CollisionShape2D.global_position.x = 10465
			$CollisionShape2D.global_position.y = 468
			$Camera2D.global_position.x = 10465
			$Camera2D.global_position.y = 468

func unpause(timeline):
	get_tree().paused = false
	
	
func _on_Area2D_body_entered(body):
	state = "balloon"
	$Sprite.offset.y =  -115


func _on_Balloonarea_body_exited(body):
	state = "normal"
	$Sprite.offset.y =  0


func _on_Change_level_body_entered(body):
	get_tree().change_scene("res://Level" + str(int(get_tree().current_scene.name) + 1) + ".tscn")


func _on_ChangeLevel2_body_entered(body):
	var new_dialog = Dialogic.start("/The_end")
	new_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
	new_dialog.connect("timeline_end", self, "unpause")
	add_child(new_dialog)


func _on_Crystal_new_position():
	$Sprite.global_position.x = 670
	$Sprite.global_position.y = 468
	$CollisionShape2D.global_position.x = 670
	$CollisionShape2D.global_position.y = 468
	$Camera2D.global_position.x = 670
	$Camera2D.global_position.y = 468



func _on_Crystal2_new_position():
	$Sprite.global_position.x = 3295
	$Sprite.global_position.y = 405
	$CollisionShape2D.global_position.x = 3295
	$CollisionShape2D.global_position.y = 405
	$Camera2D.global_position.x = 3295
	$Camera2D.global_position.y = 405


func _on_Crystal3_new_position():
	$Sprite.global_position.x = 3295
	$Sprite.global_position.y = 405
	$CollisionShape2D.global_position.x = 3295
	$CollisionShape2D.global_position.y = 405
	$Camera2D.global_position.x = 3295
	$Camera2D.global_position.y = 405

func _on_Crystal4_new_position():
	$Sprite.global_position.x = 3295
	$Sprite.global_position.y = 405
	$CollisionShape2D.global_position.x = 3295
	$CollisionShape2D.global_position.y = 405
	$Camera2D.global_position.x = 3295
	$Camera2D.global_position.y = 405


func _on_Crystal5_new_position():
	$Sprite.global_position.x = 3295
	$Sprite.global_position.y = 405
	$CollisionShape2D.global_position.x = 3295
	$CollisionShape2D.global_position.y = 405
	$Camera2D.global_position.x = 3295
	$Camera2D.global_position.y = 405


func _on_Crystal6_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal7_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal8_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal9_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal10_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal11_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal12_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal13_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal14_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal15_new_position():
	$Sprite.global_position.x = 6610
	$Sprite.global_position.y = 20
	$CollisionShape2D.global_position.x = 6610
	$CollisionShape2D.global_position.y = 20
	$Camera2D.global_position.x = 6610
	$Camera2D.global_position.y = 20


func _on_Crystal16_new_position():
	$Sprite.global_position.x = 12600
	$Sprite.global_position.y = 340
	$CollisionShape2D.global_position.x = 12600
	$CollisionShape2D.global_position.y = 340
	$Camera2D.global_position.x = 12600
	$Camera2D.global_position.y = 340
	

func _on_Wave_new_position():
	$Sprite.global_position.x = 1310
	$Sprite.global_position.y = 340
	$CollisionShape2D.global_position.x = 1310
	$CollisionShape2D.global_position.y = 340
	$Camera2D.global_position.x = 1310
	$Camera2D.global_position.y = 340


func _on_Wave2_new_position():
	$Sprite.global_position.x = 1310
	$Sprite.global_position.y = 340
	$CollisionShape2D.global_position.x = 1310
	$CollisionShape2D.global_position.y = 340
	$Camera2D.global_position.x = 1310
	$Camera2D.global_position.y = 340


func _on_Wave3_new_position():
	$Sprite.global_position.x = 1310
	$Sprite.global_position.y = 340
	$CollisionShape2D.global_position.x = 1310
	$CollisionShape2D.global_position.y = 340
	$Camera2D.global_position.x = 1310
	$Camera2D.global_position.y = 340


func _on_Wave4_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave5_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave6_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave7_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave8_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave9_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44
	

func _on_Wave10_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave11_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave12_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave14_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave15_new_position():
	$Sprite.global_position.x = 8352
	$Sprite.global_position.y = -44
	$CollisionShape2D.global_position.x = 8352
	$CollisionShape2D.global_position.y = -44
	$Camera2D.global_position.x = 8352
	$Camera2D.global_position.y = -44


func _on_Wave16_new_position():
	$Sprite.global_position.x = -95
	$Sprite.global_position.y = 102
	$CollisionShape2D.global_position.x = -95
	$CollisionShape2D.global_position.y = 102
	$Camera2D.global_position.x = -95
	$Camera2D.global_position.y = 102


func _on_Wave17_new_position():
	$Sprite.global_position.x = 2530
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 2530
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 2530
	$Camera2D.global_position.y = -283


func _on_Wave18_new_position():
	$Sprite.global_position.x = 2530
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 2530
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 2530
	$Camera2D.global_position.y = -283


func _on_Wave19_new_position():
	$Sprite.global_position.x = 2530
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 2530
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 2530
	$Camera2D.global_position.y = -283


func _on_Wave20_new_position():
	$Sprite.global_position.x = 2530
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 2530
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 2530
	$Camera2D.global_position.y = -283


func _on_Wave21_new_position():
	$Sprite.global_position.x = 2530
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 2530
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 2530
	$Camera2D.global_position.y = -283


func _on_Wave22_new_position():
	$Sprite.global_position.x = 3864
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 3864
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 3864
	$Camera2D.global_position.y = -283


func _on_Wave23_new_position():
	$Sprite.global_position.x = 3864
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 3864
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 3864
	$Camera2D.global_position.y = -283


func _on_Wave24_new_position():
	$Sprite.global_position.x = 3864
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 3864
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 3864
	$Camera2D.global_position.y = -283


func _on_Wave25_new_position():
	$Sprite.global_position.x = 3864
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 3864
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 3864
	$Camera2D.global_position.y = -283


func _on_Wave26_new_position():
	$Sprite.global_position.x = 3864
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 3864
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 3864
	$Camera2D.global_position.y = -283


func _on_Wave27_new_position():
	$Sprite.global_position.x = 3864
	$Sprite.global_position.y = -283
	$CollisionShape2D.global_position.x = 3864
	$CollisionShape2D.global_position.y = -283
	$Camera2D.global_position.x = 3864
	$Camera2D.global_position.y = -283


func _on_Wave28_new_position():
	$Sprite.global_position.x = 6180
	$Sprite.global_position.y = -922
	$CollisionShape2D.global_position.x = 6180
	$CollisionShape2D.global_position.y = -922
	$Camera2D.global_position.x = 6180
	$Camera2D.global_position.y = -922


func _on_Wave29_new_position():
	$Sprite.global_position.x = 6180
	$Sprite.global_position.y = -922
	$CollisionShape2D.global_position.x = 6180
	$CollisionShape2D.global_position.y = -922
	$Camera2D.global_position.x = 6180
	$Camera2D.global_position.y = -922


func _on_Wave30_new_position():
	$Sprite.global_position.x = 6180
	$Sprite.global_position.y = -922
	$CollisionShape2D.global_position.x = 6180
	$CollisionShape2D.global_position.y = -922
	$Camera2D.global_position.x = 6180
	$Camera2D.global_position.y = -922


func _on_Wave31_new_position():
	$Sprite.global_position.x = 6180
	$Sprite.global_position.y = -922
	$CollisionShape2D.global_position.x = 6180
	$CollisionShape2D.global_position.y = -922
	$Camera2D.global_position.x = 6180
	$Camera2D.global_position.y = -922


func _on_Wave32_new_position():
	$Sprite.global_position.x = 6180
	$Sprite.global_position.y = -922
	$CollisionShape2D.global_position.x = 6180
	$CollisionShape2D.global_position.y = -922
	$Camera2D.global_position.x = 6180
	$Camera2D.global_position.y = -922


func _on_Wave33_new_position():
	$Sprite.global_position.x = 6180
	$Sprite.global_position.y = -922
	$CollisionShape2D.global_position.x = 6180
	$CollisionShape2D.global_position.y = -922
	$Camera2D.global_position.x = 6180
	$Camera2D.global_position.y = -922


func _on_back_pressed():
	get_tree().change_scene("res://Menu.tscn")
	$"/root/BgMusic".play()


func _on_Pause_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		emit_signal("pause_label")
	elif get_tree().paused == false:
		get_tree().paused = true
		emit_signal("pause_label")


func _on_Sofoklis_body_entered(body):
	get_tree().paused = true
	var start_dialog = Dialogic.start("/Start")
	start_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
	start_dialog.connect("timeline_end", self, "unpause")
	add_child(start_dialog)
