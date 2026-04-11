class_name Interactable extends Area2D
@onready var interaction_label = $Label
@export var interaction_name = "test interaction"
@export var interation_type = "test"
@export var display_active = false

func _ready():
	if interaction_label:
		interaction_label.visible = false

@onready var sprite = $sign

func set_active(is_active: bool):
	if is_active:
		sprite.frame = 0
		if interaction_label:
			interaction_label.visible = true
	else:
		sprite.frame = 1
		if interaction_label:
			interaction_label.visible = false


func interact():
		push_warning("This Interactable has no interact() code yet!")

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
