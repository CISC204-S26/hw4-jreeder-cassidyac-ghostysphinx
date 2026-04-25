extends CharacterBody2D

@export var nearby_interactables: Array = []
@export var speed: float = 300.0


func _physics_process(_delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction.normalized() * speed
	move_and_slide()

	if Input.is_action_just_pressed("interact"):
		for obj in nearby_interactables:
			if obj.has_method("interact"):
				print("INTERACTING WITH:", obj.name)
				obj.interact()
				break


func _on_interaction_detector_area_entered(area):
	if area is Interactable:
		area.set_active(true)
		nearby_interactables.append(area)


func _on_interaction_detector_area_exited(area):
	if area is Interactable:
		area.set_active(false)
		nearby_interactables.erase(area)
