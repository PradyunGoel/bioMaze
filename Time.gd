extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time: int
var time_file = "user://time.save"

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = File.new()
	file.open(time_file, File.READ)
	time = file.get_var()
	file.close()
	$Label.text = str(time)+'sec'
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
