tool

extends Node2D

signal change_scene
signal change_score

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (String, FILE) var next_scene_path = ""
export var next_scene: PackedScene
var time: int
var score = 0
var time_file = "user://time.save"

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = File.new()
	file.open(time_file, File.READ)
	time = file.get_var()
	file.close()
	$Stopwatch4.time = time
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Assets/The-Pink-Panther-Theme-Song.ogg")
	player.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Q1.occupied:
		get_tree().set_pause(true)
		$Label1.show()
		$Correct1.show()
		$Wrong1A.show()
		$Wrong1B.show()
	if $Q2.occupied:
		get_tree().set_pause(true)
		$Label2.show()
		$Correct2.show()
		$Wrong2A.show()
		$Wrong2B.show()
	if $Q3.occupied:
		get_tree().set_pause(true)
		$Label3.show()
		$Wrong3A.show()
		$Wrong3B.show()
		$Correct3.show()
		#$AcceptDialog2.popup()
		#$PopupMenu2.popup()
	if $Q4.occupied:
		get_tree().set_pause(true)
		$Label4.show()
		$Wrong4A.show()
		$Wrong4B.show()
		$Correct4.show()
#	pass


func _on_Correct3_pressed():
	var file = File.new()
	var time = $Stopwatch4._get_time()
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	score = 1
	emit_signal("change_score")
	emit_signal("change_scene")
	#get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Wrong3A_pressed():
	var file = File.new()
	var time = $Stopwatch4._get_time()
	time += 100
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	emit_signal("change_score")
	emit_signal("change_scene")
	#get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Wrong3B_pressed():
	var file = File.new()
	var time = $Stopwatch4._get_time()
	time += 100
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	emit_signal("change_score")
	emit_signal("change_scene")
	#get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Correct1_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label1.hide()
	$Correct1.hide()
	$Wrong1A.hide()
	$Wrong1B.hide()
	score = 1
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Wrong1A_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label1.hide()
	$Correct1.hide()
	$Wrong1A.hide()
	$Wrong1B.hide()
	$Stopwatch4.time += 100
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Wrong1B_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label1.hide()
	$Correct1.hide()
	$Wrong1A.hide()
	$Wrong1B.hide()
	$Stopwatch4.time += 100
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Wrong2A_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q2.occupied = false
	$Q2.disconnect("body_entered", $Q2, "_on_Q2_body_entered")
	$Q2.hide()
	#remove_child($Q1)
	$Label2.hide()
	$Correct2.hide()
	$Wrong2A.hide()
	$Wrong2B.hide()
	$Stopwatch4.time += 100
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Wrong2B_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q2.occupied = false
	$Q2.disconnect("body_entered", $Q2, "_on_Q2_body_entered")
	$Q2.hide()
	#remove_child($Q1)
	$Label2.hide()
	$Correct2.hide()
	$Wrong2A.hide()
	$Wrong2B.hide()
	$Stopwatch4.time += 100
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Correct2_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q2.occupied = false
	$Q2.disconnect("body_entered", $Q2, "_on_Q2_body_entered")
	$Q2.hide()
	#remove_child($Q1)
	$Label2.hide()
	$Correct2.hide()
	$Wrong2A.hide()
	$Wrong2B.hide()
	score = 1
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Wrong4A_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q4.occupied = false
	$Q4.disconnect("body_entered", $Q4, "_on_Q4_body_entered")
	$Q4.hide()
	#remove_child($Q1)
	$Label4.hide()
	$Correct4.hide()
	$Wrong4A.hide()
	$Wrong4B.hide()
	$Stopwatch4.time += 100
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Wrong4B_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q4.occupied = false
	$Q4.disconnect("body_entered", $Q4, "_on_Q4_body_entered")
	$Q4.hide()
	#remove_child($Q1)
	$Label4.hide()
	$Correct4.hide()
	$Wrong4A.hide()
	$Wrong4B.hide()
	$Stopwatch4.time += 100
	emit_signal("change_score")
	pass # Replace with function body.


func _on_Correct4_pressed():
	get_tree().set_pause(false)
	$Player4.position += Vector2.LEFT*$Player4.grid_size
	$Q4.occupied = false
	$Q4.disconnect("body_entered", $Q4, "_on_Q4_body_entered")
	$Q4.hide()
	#remove_child($Q1)
	$Label4.hide()
	$Correct4.hide()
	$Wrong4A.hide()
	$Wrong4B.hide()
	score = 1
	emit_signal("change_score")
	pass # Replace with function body.
