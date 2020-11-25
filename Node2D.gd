extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Spot.occupied:
		get_tree().set_pause(true)
		$AcceptDialog.popup()
#	pass


func _on_AcceptDialog_confirmed():
	get_tree().set_pause(false)
	get_tree().reload_current_scene()
