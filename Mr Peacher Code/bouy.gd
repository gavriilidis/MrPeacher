extends Area2D
 
signal help_changed

func _on_bouy_body_entered(body):
	$SoundHit.play()
	get_tree().paused = true
	set_collision_mask_bit(0, false)
	if VarHelp.help != 0:
		var help_dialog = Dialogic.start("/Help")
		help_dialog.pause_mode = Node.PAUSE_MODE_PROCESS
		help_dialog.connect("timeline_end", self, "unpause")
		add_child(help_dialog)
		help_dialog.connect("dialogic_signal", self, "dialogic_signal")
		VarHelp.help -= 1
		emit_signal("help_changed")
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
			_on_bouy_body_entered(body)
		elif Questionlist.list.size() == 0:
			Questionlist.list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
			_on_bouy_body_entered(body)

func unpause(timeline):
	get_tree().paused = false
	
	
func dialogic_signal(argument):
	if argument == "wrong_ans":
		get_tree().change_scene("res://Level1.tscn")


