extends Area2D

var dragging := false

func _process(_delta):
	if dragging:
		global_position = get_global_mouse_position()


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed


func _on_slot_area_entered(area: Area2D) -> void:
	pass # Replace with function body.


func _on_slot_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
