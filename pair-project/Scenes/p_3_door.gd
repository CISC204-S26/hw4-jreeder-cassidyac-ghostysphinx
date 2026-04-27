extends Area2D

@export var closed_texture: Texture2D
@export var open_texture: Texture2D
@export var next_scene: String

var is_open = false

func _ready():
	body_entered.connect(_on_body_entered)
	$Sprite2D.texture = closed_texture

func _process(delta):
	if get_parent().lights_on >= get_parent().total_lights:
		open_door()

func open_door():
	if !is_open:
		is_open = true
		$Sprite2D.texture = open_texture

func _on_body_entered(body):
	if body.is_in_group("player") and is_open:
		get_tree().change_scene_to_file("res://Scenes/Planet4.tscn")
