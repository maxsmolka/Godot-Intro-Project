extends Spatial

var _flag = false;
export var plattformSpeed = 10

func _physics_process(delta):
	var animPlayer = $AnimationPlayer;
	# ToDo: AnimationPlayer plays up and down animation of plattform
	
	var platt1 = $Pattform_1
	# ToDo: Move the OTHER plattform up and down just with code (don't forget the deltatime)
	
	