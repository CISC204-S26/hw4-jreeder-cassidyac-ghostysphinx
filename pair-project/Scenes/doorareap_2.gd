
extends Area2D

@onready var anim = $door
@onready var collision = $doorcoll

var is_open = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.score_changed.connect(_on_score_changed)
	anim.frame = 0
	anim.stop()
	
func _on_score_changed(new_score):
	if new_score >= GameManager.total_needed:
		open_door()

func open_door():
	is_open = true
	anim.frame = 1
	collision.set_deferred("disabled", false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (GameManager.planet_2_door_open):
		open_door()
		GameManager.planet_2_door_open = false

func _on_body_entered(body: Node2D) -> void:
	print(body.name)
	if body.name == "alien" and is_open:
		#door.play("redBlink")
		anim.frame = 1
		GameManager.complete_planet(2)
		get_tree().change_scene_to_file("res://Scenes/MainScene.tscn")
