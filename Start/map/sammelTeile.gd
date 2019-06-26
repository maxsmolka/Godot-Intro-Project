extends Spatial

signal ui_go
var ui

func _ready():
	# save all nodes of group "ui" in ui 
	ui = get_tree().get_nodes_in_group("ui")
	# connect signal
	self.connect("ui_go", ui[0], "addPoint")
	
	
func _physics_process(delta):
	# ToDo: rotate obj
	

# ToDo:	1. add signal body entered 
#		2. emit signal
#		3. delete this obj
	pass