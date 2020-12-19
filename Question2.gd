tool

extends Node2D

signal change_scene

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (String, FILE) var next_scene_path = ""
export var next_scene: PackedScene
var time: int
var time_file = "user://time.save"

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = File.new()
	file.open(time_file, File.READ)
	time = file.get_var()
	file.close()
	$Stopwatch2.time = time
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Assets/despicable_me.ogg")
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
	if $Q2B.occupied:
		get_tree().set_pause(true)
		$Label3.show()
		$Correct3.show()
		$Wrong3A.show()
		$Wrong3B.show()
	if $Spot2.occupied:
		get_tree().set_pause(true)
		$Label2.show()
		$Wrong2A.show()
		$Wrong2B.show()
		$Correct2.show()
	if $Q4.occupied:
		get_tree().set_pause(true)
		$Label4.show()
		$Wrong4A.show()
		$Wrong4B.show()
		$Correct4.show()
		#$AcceptDialog2.popup()
		#$PopupMenu2.popup()
#	pass


func _on_AcceptDialog2_confirmed():
	get_tree().set_pause(false)
	get_tree().reload_current_scene()


func _on_PopupMenu_index_pressed(index):
	if index == 0:
		get_tree().set_pause(false)
		get_tree().reload_current_scene()
	#pass # Replace with function body.


func _on_Correct2_pressed():
	var file = File.new()
	var time = $Stopwatch2._get_time()
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	emit_signal("change_scene")
	#get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Wrong2A_pressed():
	var file = File.new()
	var time = $Stopwatch2._get_time()
	time += 100
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	emit_signal("change_scene")
	#get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Wrong2B_pressed():
	var file = File.new()
	var time = $Stopwatch2._get_time()
	time += 100
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	emit_signal("change_scene")
	#get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Correct1_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.LEFT*$Player2.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label1.hide()
	$Correct1.hide()
	$Wrong1A.hide()
	$Wrong1B.hide()
	pass # Replace with function body.


func _on_Wrong1A_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.LEFT*$Player2.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label1.hide()
	$Correct1.hide()
	$Wrong1A.hide()
	$Wrong1B.hide()
	$Stopwatch2.time += 100
	pass # Replace with function body.


func _on_Wrong1B_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.LEFT*$Player2.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label1.hide()
	$Correct1.hide()
	$Wrong1A.hide()
	$Wrong1B.hide()
	$Stopwatch2.time += 100
	pass # Replace with function body.


func _on_Wrong3A_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.DOWN*$Player2.grid_size
	$Q2B.occupied = false
	$Q2B.disconnect("body_entered", $Q2B, "_on_Q2B_body_entered")
	$Q2B.hide()
	#remove_child($Q1)
	$Label3.hide()
	$Correct3.hide()
	$Wrong3A.hide()
	$Wrong3B.hide()
	$Stopwatch2.time += 100
	pass # Replace with function body.


func _on_Wrong3B_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.DOWN*$Player2.grid_size
	$Q2B.occupied = false
	$Q2B.disconnect("body_entered", $Q2B, "_on_Q2B_body_entered")
	$Q2B.hide()
	#remove_child($Q1)
	$Label3.hide()
	$Correct3.hide()
	$Wrong3A.hide()
	$Wrong3B.hide()
	$Stopwatch2.time += 100
	pass # Replace with function body.


func _on_Correct3_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.DOWN*$Player2.grid_size
	$Q2B.occupied = false
	$Q2B.disconnect("body_entered", $Q2B, "_on_Q2B_body_entered")
	$Q2B.hide()
	#remove_child($Q1)
	$Label3.hide()
	$Correct3.hide()
	$Wrong3A.hide()
	$Wrong3B.hide()
	pass # Replace with function body.


func _on_Wrong4A_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.RIGHT*$Player2.grid_size
	$Q4.occupied = false
	$Q4.disconnect("body_entered", $Q4, "_on_Q4_body_entered")
	$Q4.hide()
	#remove_child($Q1)
	$Label4.hide()
	$Correct4.hide()
	$Wrong4A.hide()
	$Wrong4B.hide()
	$Stopwatch2.time += 100
	pass # Replace with function body.


func _on_Wrong4B_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.RIGHT*$Player2.grid_size
	$Q4.occupied = false
	$Q4.disconnect("body_entered", $Q4, "_on_Q4_body_entered")
	$Q4.hide()
	#remove_child($Q1)
	$Label4.hide()
	$Correct4.hide()
	$Wrong4A.hide()
	$Wrong4B.hide()
	$Stopwatch2.time += 100
	pass # Replace with function body.


func _on_Correct4_pressed():
	get_tree().set_pause(false)
	$Player2.position += Vector2.RIGHT*$Player2.grid_size
	$Q4.occupied = false
	$Q4.disconnect("body_entered", $Q4, "_on_Q4_body_entered")
	$Q4.hide()
	#remove_child($Q1)
	$Label4.hide()
	$Correct4.hide()
	$Wrong4A.hide()
	$Wrong4B.hide()
	pass # Replace with function body.
