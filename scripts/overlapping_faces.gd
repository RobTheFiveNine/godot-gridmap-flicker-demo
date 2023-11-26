extends Node3D


@onready var aa_label: Label = $AALabel


func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene_to_file("res://no_overlapping_faces.tscn")

	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

	if Input.is_action_just_pressed("ui_focus_next"):
		var viewport = get_viewport()
		if viewport.use_taa:
			viewport.use_taa = false
			viewport.msaa_3d = Viewport.MSAA_DISABLED
			aa_label.text = "No Anti Aliasing"
		else:
			viewport.use_taa = true
			viewport.msaa_3d = Viewport.MSAA_4X
			aa_label.text = "MSAA 4X + TAA"
