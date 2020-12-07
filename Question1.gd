tool

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (String, FILE) var next_scene_path = ""
export var next_scene: PackedScene
var penalty: int
var time_file = "user://time.save"

# Called when the node enters the scene tree for the first time.
func _ready():
	#var player = AudioStreamPlayer.new()
	#self.add_child(player)
	#player.stream = load("res://Assets/Star Wars- The Imperial March (Darth Vader's Theme).ogg")
	#player.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Q1.occupied:
		get_tree().set_pause(true)
		$Label0.show()
		$Correct0.show()
		$Wrong0A.show()
		$Wrong0B.show()
	if $Q2.occupied:
		get_tree().set_pause(true)
		$Label2.show()
		$Correct2.show()
		$Wrong2A.show()
		$Wrong2B.show()
	if $Spot.occupied:
		get_tree().set_pause(true)
		$Label1.show()
		$Correct1.show()
		$Wrong1A.show()
		$Wrong1B.show()
		#$PopupMenu1.popup()
		#$AcceptDialog.popup()
#	pass


func _on_AcceptDialog_confirmed():
	#if next_scene_path == "":
	#	return "next scene path must be set"
	#else:
	#	return next_scene_path
	get_tree().set_pause(false)
	#if get_tree().change_scene(next_scene_path) != OK:
	#	$AcceptDialog.popup()
	#	print("Unavailable scene")
	get_tree().change_scene_to(next_scene)
	#get_tree().reload_current_scene()


func _on_Wrong1A_pressed():
	var file = File.new()
	var time = $Stopwatch._get_time()
	time += 100
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Correct1_pressed():
	var file = File.new()
	var time = $Stopwatch._get_time()
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Wrong1B_pressed():
	var file = File.new()
	var time = $Stopwatch._get_time()
	time += 100
	file.open(time_file, File.WRITE)
	file.store_var(time)
	file.close()
	get_tree().set_pause(false)
	get_tree().change_scene_to(next_scene)
	#pass # Replace with function body.


func _on_Wrong0A_pressed():
	get_tree().set_pause(false)
	$Player.position += Vector2.LEFT*$Player.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label0.hide()
	$Correct0.hide()
	$Wrong0A.hide()
	$Wrong0B.hide()
	$Stopwatch.time += 100
	#pass # Replace with function body.


func _on_Wrong0B_pressed():
	get_tree().set_pause(false)
	$Player.position += Vector2.LEFT*$Player.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label0.hide()
	$Correct0.hide()
	$Wrong0A.hide()
	$Wrong0B.hide()
	$Stopwatch.time += 100
	#pass # Replace with function body.


func _on_Correct0_pressed():
	get_tree().set_pause(false)
	$Player.position += Vector2.LEFT*$Player.grid_size
	$Q1.occupied = false
	$Q1.disconnect("body_entered", $Q1, "_on_Q1_body_entered")
	$Q1.hide()
	#remove_child($Q1)
	$Label0.hide()
	$Correct0.hide()
	$Wrong0A.hide()
	$Wrong0B.hide()
	#pass # Replace with function body.


func _on_Correct2_pressed():
	get_tree().set_pause(false)
	$Player.position += Vector2.RIGHT*$Player.grid_size
	$Q2.occupied = false
	$Q2.disconnect("body_entered", $Q2, "_on_Q2_body_entered")
	$Q2.hide()
	#remove_child($Q1)
	$Label2.hide()
	$Correct2.hide()
	$Wrong2A.hide()
	$Wrong2B.hide()
	#pass # Replace with function body.


func _on_Wrong2A_pressed():
	get_tree().set_pause(false)
	$Player.position += Vector2.RIGHT*$Player.grid_size
	$Q2.occupied = false
	$Q2.disconnect("body_entered", $Q2, "_on_Q2_body_entered")
	$Q2.hide()
	#remove_child($Q1)
	$Label2.hide()
	$Correct2.hide()
	$Wrong2A.hide()
	$Wrong2B.hide()
	$Stopwatch.time += 100
	#pass # Replace with function body.


func _on_Wrong2B_pressed():
	get_tree().set_pause(false)
	$Player.position += Vector2.RIGHT*$Player.grid_size
	$Q2.occupied = false
	$Q2.disconnect("body_entered", $Q2, "_on_Q2_body_entered")
	$Q2.hide()
	#remove_child($Q1)
	$Label2.hide()
	$Correct2.hide()
	$Wrong2A.hide()
	$Wrong2B.hide()
	$Stopwatch.time += 100
	#pass # Replace with function body.
