extends CharacterBody2D

@export var nearby_interactables = []
	
@export var speed: float = 300.0

@onready var sign = $Interactable/button

const SPEED = 300.0
const JUMP_VELOCITY = -400.0



func _physics_process(delta):
	velocity = Vector2.ZERO
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		velocity = direction.normalized() * SPEED
	if Input.is_action_just_pressed("interact"):
			if nearby_interactables:
					nearby_interactables.back().interact()

	move_and_slide()


func _on_red_button_area_entered(area):
	print("interactable removed")
	area.set_monitoring(true)
	nearby_interactables.append(area)


func _on_red_button_area_exited(area):
	print("interactable detected")
	area.set_monitoring(false)
	nearby_interactables.erase(area)
