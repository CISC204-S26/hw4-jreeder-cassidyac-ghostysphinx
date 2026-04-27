extends Area2D

@export var blank_texture: Texture2D
@export var text_texture: Texture2D

var is_read = false

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	$Sprite2D.texture = blank_texture

func _on_body_entered(body):
	if body.is_in_group("player"):
		is_read = true
		$Sprite2D.texture = text_texture

func _on_body_exited(body):
	if body.is_in_group("player"):
		is_read = false
		$Sprite2D.texture = blank_texture
