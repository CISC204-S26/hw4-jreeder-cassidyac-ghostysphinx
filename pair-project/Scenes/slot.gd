extends Area2D

@export var target_scene: String = "res://Scenes/FinalScene.tscn"

var ticket_inside := false


func _on_area_entered(area):
	if area.name == "Ticket":
		ticket_inside = true


func _on_area_exited(area):
	if area.name == "Ticket":
		ticket_inside = false


func _process(_delta):
	if ticket_inside and !Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		get_tree().change_scene_to_file(target_scene)
