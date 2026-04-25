extends Area2D

var player_in_range = false


func _process(_delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://Scenes/Planet3.tscn")


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		player_in_range = true


func _on_body_exited(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		player_in_range = false
