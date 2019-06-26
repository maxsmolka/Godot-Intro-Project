extends KinematicBody
class_name Player

export var move_speed := 35.0
export var jump_force := 50.0
export var gravity := 100.0
export var acceleration := 2.5
export var deceleration := 7.5

var velocity := Vector3()
var starting_position := Vector3()
export var rotate_speed : float = 3.0
var direction_x : float = 1.0
var direction_z : float = 1.0


onready var animation_player : AnimationPlayer

func _ready() -> void:
	# ToDo: animationplayer plays idle animation of player


	# ToDo: set startpoint
	
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	_process_movement(delta)
	pass
		
func _process_movement(delta: float) -> void:
	var motion_vec := Vector3()
	
	# ToDo: visibilitynotifier - check if player is out of screen
	
			
	# movement input
	motion_vec.x = int(Input.get_action_strength("move_right")) - int(Input.get_action_strength("move_left"))
	motion_vec.z = int(Input.get_action_strength("move_down")) - int(Input.get_action_strength("move_up"))
			
	# velocity x-axis for movement
	var desired_x_velocity = motion_vec.x * move_speed
	var weight_x = deceleration * delta if desired_x_velocity == 0 else acceleration * delta
	velocity.x = lerp(velocity.x, desired_x_velocity, weight_x)
	
	# ToDo: velocity z-axis for movement
	
	
	if not is_on_floor():
		velocity.y -= gravity * delta
	elif is_on_floor() or is_on_ceiling():
		velocity.y = 0.0
	
	# ToDo: jump (input and velocity)
	
		
	var moving = move_and_slide(velocity, Vector3.UP)
	
	# particlesystem
#	var x = round(abs(moving.x))
#	var z = round(abs(moving.z))
#	if x == 0 || z == 0:
#		$DustFX.emitting = false
#	if x != 0 || z != 0:
#		$DustFX.emitting = true
		
		

	
	
	
	
	
	
	
	
	
	