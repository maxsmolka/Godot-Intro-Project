extends CanvasLayer

onready var counter = $Sprite

func _ready():
	counter.set_frame(0)
	
func addPoint():
	var oldCount = counter.get_frame()
	counter.set_frame(oldCount+1)