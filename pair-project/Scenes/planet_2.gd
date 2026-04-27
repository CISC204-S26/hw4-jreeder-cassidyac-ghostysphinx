extends Area2D

var player_in_range = false
@export var planet_id = 2
func _process(_delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		if GameManager.unlocked_planets >= planet_id:
			get_tree().change_scene_to_file("res://Scenes/Planet2.tscn")
		else:
			print("PLANET LOCKED")
			$p2islocked.text = "[color=red]PLANET 2 LOCKED[/color]"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		player_in_range = true


func _on_body_exited(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		player_in_range = false
		$p2islocked.text = ""
