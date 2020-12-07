extends Popup


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selected = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if not visible:
		pass
	else:
		if Input.is_action_just_pressed("ui_down"):
			selected = (selected + 1) % 3;
		elif Input.is_action_just_pressed("ui_up"):
			if selected > 0:
				selected = selected - 1
			else:
				selected = 2
		elif Input.is_action_just_pressed("attack"):
			match selected:
				0:
					get_tree().paused = false
					$Player.set_process_input(true)
					hide()
				1:
					get_tree().reload_current_scene()
					get_tree().paused = false
				2:
					get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
