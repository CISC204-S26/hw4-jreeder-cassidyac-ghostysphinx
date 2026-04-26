extends Area2D

@onready var sprite = $Sprite2D

var turned_on := false

func _on_body_entered(body):
	if body.is_in_group("player") and not turned_on:
		turn_on_light()

func turn_on_light():
	turned_on = true
	sprite.texture = preload("res://Art/LightON.png") # change to your ON texture
