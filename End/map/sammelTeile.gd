extends Spatial


func ready():
	pass
	
func _physics_process(delta):
	self.rotate_y(.1)


func _on_Area_body_entered(body):
	print("eg")
	self.queue_free()
