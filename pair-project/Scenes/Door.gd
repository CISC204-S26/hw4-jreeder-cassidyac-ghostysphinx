extends Area2D

@export var door_closed: Texture2D
@export var door_open: Texture2D

@onready var sprite = $door

var unlocked := false


func _ready():
	sprite.texture = door_closed
	get_parent().all_lights_on.connect(open_door)


func open_door():
	unlocked = true
	sprite.texture = door_open


func interact():
	print("DOOR INTERACT CALLED")

	if unlocked:
		print("CHANGING SCENE")
		get_tree().change_scene_to_file("res://Scenes/MainScene.tscn")
