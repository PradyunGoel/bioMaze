extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var time = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	self.text = str(stepify(time, 0.1))+' sec'

func _get_time():
	return time
	
