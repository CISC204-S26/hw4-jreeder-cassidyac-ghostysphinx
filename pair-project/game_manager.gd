extends Node

var items_collected = 0
var total_needed = 5

signal score_changed(new_score)

func add_item():
	items_collected += 1
	emit_signal("score_changed", items_collected)
	
	if items_collected >= total_needed:
		print("Door is now open")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
