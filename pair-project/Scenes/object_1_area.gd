extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("ready") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_interaction_detector_body_entered(body: Node2D) -> void:
	print("touching")
