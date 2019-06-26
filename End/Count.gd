extends Label

# Declare member variables here. Examples:
var counter = 0
# var b = "text"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str(counter)

func update_count_label():
	counter = counter + 1