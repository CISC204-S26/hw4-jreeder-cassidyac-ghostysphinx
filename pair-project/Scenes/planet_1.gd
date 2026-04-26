extends Area2D

var player_in_range = false

@export var planet_id = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		if GameManager.unlocked_planets == planet_id:
			get_tree().change_scene_to_file("res://Scenes/Planet1.tscn")
		elif GameManager.unlocked_planets > planet_id:
			$p1islocked.text = "[color=green]PLANET COMPLETED[/color]"


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		player_in_range = true



func _on_body_exited(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		player_in_range = false
		$p1islocked.text = ""


func _on_planet_2_body_entered(_body: Node2D) -> void:
	pass # Replace with function body.
