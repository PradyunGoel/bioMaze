extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var occupied = false




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Spot_body_entered(_body):
	occupied = true
	
