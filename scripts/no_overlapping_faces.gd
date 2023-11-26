extends Node3D


func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene_to_file("res://overlapping_faces.tscn")

	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
