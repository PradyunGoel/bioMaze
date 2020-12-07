extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var occupied = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Q2B_body_entered(body):
	occupied = true
	pass # Replace with function body.
