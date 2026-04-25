extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Items: 0 / 5"

func _on_score_changed(new_score):
	text = "Items: " + str(new_score) + " / 5"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
