extends Node2D
var scene
var c = 1
var score = 0
var count = 0
onready var scene_node = $Question1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Question1.connect("change_scene", self, "_on_change_scene")
	$Question1.connect("change_score", self, "_on_change_score")
	pass # Replace with function body.

func _on_change_scene():
	c += 1
	scene_node.queue_free()
	scene = load("res://Question"+str(c)+".tscn")
	scene_node = scene.instance()
	add_child(scene_node)
	scene_node.connect("change_scene", self, "_on_change_scene")
	scene_node.connect("change_score", self, "_on_change_score")


func _on_change_score():
	score += scene_node.score
	count += 1
	$Score.set_text(str(score)+"/"+str(count))
	scene_node.score = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
