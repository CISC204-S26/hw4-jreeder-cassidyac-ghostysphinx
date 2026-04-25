extends Area2D

@export var target_scene: String = "res://Scenes/MainScene.tscn"

var object_inside := false


func _on_area_entered(area):
	if area.name == "Draggable":
		object_inside = true


func _on_area_exited(area):
	if area.name == "Draggable":
		object_inside = false


func _process(_delta):
	if object_inside and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false:
		get_tree().change_scene_to_file(target_scene)


func _on_ticket_area_entered(area: Area2D) -> void:
	pass # Replace with function body.


func _on_ticket_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
