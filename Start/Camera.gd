extends Camera

var player_ref
export var smoothSpeed : float = 1.250
export var offset : = Vector3(0,13,35)


func _ready():
	# ToDo: add player to a group + get reference
	pass


func _physics_process(delta):
	
	#ToDo:	1. get desiredPosition of player
	#		2. get smoothedPosition of desiredPosition

	# transform.origin = smoothedPosition
	pass
	
