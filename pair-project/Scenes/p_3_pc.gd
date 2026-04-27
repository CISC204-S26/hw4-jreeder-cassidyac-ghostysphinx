extends CharacterBody2D

@export var nearby_interactables: Array = []
@export var speed: float = 300.0



func _physics_process(_delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction.normalized() * speed
	move_and_slide()
