#class_name InteractableRed
extends Area2D

@onready var interaction_label = get_node_or_null("Label")

@export var interaction_name = "test interaction"
@export var interaction_type = "test"
@export var display_active = false
@onready var red_button: AnimatedSprite2D = $"red button"


func _ready():
	if interaction_label:
		interaction_label.visible = false


func set_active(is_active: bool):
	if interaction_label:
		interaction_label.visible = is_active


func interact():
	push_warning("This Interactable has no interact() code yet!")


func _on_body_entered(body: Node2D) -> void:
	print(body.name)
	red_button.play("redBlink")


func _on_body_exited(body: Node2D) -> void:
	print(body.name)
	red_button.stop()


func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.


func _on_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
