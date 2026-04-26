extends Node

var items_collected = 0
var total_needed = 5

var unlocked_planets = 1

signal score_changed(new_score)

func add_item():
	items_collected += 1
	emit_signal("score_changed", items_collected)
	
	if items_collected >= total_needed:
		print("Door is now open")

func complete_planet(planet_number):
	if planet_number == unlocked_planets:
		unlocked_planets += 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
