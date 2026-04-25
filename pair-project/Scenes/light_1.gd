extends Interactable

@export var light_off: Texture2D
@export var light_on: Texture2D

var is_on = false

@onready var sprite = $Sprite2D


func interact():
	if !is_on:
		is_on = true
		sprite.texture = light_on

		get_parent().light_turned_on()
