extends Camera

var player_ref
export var smoothSpeed : float = 1.250
export var offset : = Vector3(0,13,35)

# Called when the node enters the scene tree for the first time.
func _ready():
	player_ref = get_tree().get_nodes_in_group("player")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var desiredPosition : Vector3 = player_ref[0].get_translation() + offset
	var smoothedPosition : Vector3 = lerp(transform.origin, desiredPosition, smoothSpeed * delta)
	
	transform.origin = smoothedPosition
