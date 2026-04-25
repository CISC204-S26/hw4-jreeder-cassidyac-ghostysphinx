extends Area2D

@export var target_scene: String = "res://Planet1.tscn"

var player_in_range := false

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_in_range = true
		print("Player entered Planet 1 area")

func _on_body_exited(body):
	if body.is_in_group("player"):
		player_in_range = false
		print("Player left Planet 1 area")

func _process(_delta):
	if player_in_range and Input.is_action_just_pressed("interact"):
		print("Entering Planet1 scene")
		get_tree().change_scene_to_file(target_scene)
