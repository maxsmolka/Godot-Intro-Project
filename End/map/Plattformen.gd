extends Spatial

var _flag = false;
export var plattformSpeed = 10

func _physics_process(delta):
	
	$AnimationPlayer.play("move_up_down")
	
	var platt1 = $Pattform_1
	if platt1.translation.y > 33:
		_flag = true;
	if platt1.translation.y < 1:
		_flag = false
	if _flag:
		platt1.translation.y -= plattformSpeed * delta
	else:
		platt1.translation.y += plattformSpeed * delta
		
	

