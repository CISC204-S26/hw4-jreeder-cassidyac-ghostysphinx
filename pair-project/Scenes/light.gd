extends Area2D

@export var off_texture: Texture2D
@export var on_texture: Texture2D

var player_in_range = false
var is_on = false

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	$Sprite2D.texture = off_texture

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_in_range = true

func _on_body_exited(body):
	if body.is_in_group("player"):
		player_in_range = false

func _process(delta):
	if player_in_range and Input.is_action_just_pressed("interact"):
		toggle_light()

func toggle_light():
	is_on = !is_on
	
	if is_on:
		$Sprite2D.texture = on_texture
		get_parent().lights_on += 1
	else:
		$Sprite2D.texture = off_texture
		get_parent().lights_on -= 1
		
	print(get_parent().lights_on)
