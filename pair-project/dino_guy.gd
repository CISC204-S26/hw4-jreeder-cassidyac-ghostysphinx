extends CharacterBody2D

var nearby_interactables = []
	

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(_delta: float) -> void:
	# Add the gravity.
	# if not is_on_floor():
		# velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("move_up", "move_down", "move_right", "move_left")
	if direction:
		velocity = direction.normalized() * SPEED

	move_and_slide()

func _on_area_2d_area_entered(area: Area2D) -> void:
	print("interactable detected")
	area.set_active(true)
	nearby_interactables.append(area)

func _on_area_2d_area_exited(area: Area2D) -> void:
	print("interactable removed")
	area.set_active(false)
	nearby_interactables.erase(area)
