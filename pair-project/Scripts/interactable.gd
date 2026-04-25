class_name Interactable
extends Area2D

@onready var interaction_label = get_node_or_null("Label")

@export var interaction_name = "test interaction"
@export var interaction_type = "test"
@export var display_active = false


func _ready():
	if interaction_label:
		interaction_label.visible = false


func set_active(is_active: bool):
	if interaction_label:
		interaction_label.visible = is_active


func interact():
	push_warning("This Interactable has no interact() code yet!")
