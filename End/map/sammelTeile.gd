extends Spatial

signal update_count
var ui 

func _ready():
	ui = get_tree().get_nodes_in_group("ui")
	self.connect("update_count", ui[0], "update_count_label")
	pass
	
func _physics_process(delta):
	self.rotate_y(.1)


func _on_Area_body_entered(body):
	print("eg")
	emit_signal("update_count")
	self.queue_free()
