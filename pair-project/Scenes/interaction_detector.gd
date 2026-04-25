extends Area2D

@export var nearby_interactables: Array = []

func _on_area_entered(area):
	if area.has_method("interact"):
		nearby_interactables.append(area)
	print("ENTERED:", area.name)

func _on_area_exited(area):
	nearby_interactables.erase(area)
