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
var is_dead : bool = false

onready var animation_player : AnimationPlayer

func _ready() -> void:
	animation_player = $AnimPlayer
	animation_player.play("idle")
	starting_position = translation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if !is_dead:
		_process_movement(delta)
	elif is_dead:
		translation = starting_position
		
		
func _process_movement(delta: float) -> void:
	var motion_vec := Vector3()
	
	if !$VisibilityNotifier.is_on_screen():
			translation = starting_position
			
		
	
	motion_vec.x = int(Input.get_action_strength("move_right")) - int(Input.get_action_strength("move_left"))
	motion_vec.z = int(Input.get_action_strength("move_down")) - int(Input.get_action_strength("move_up"))
			
	direction_x = motion_vec.x
	var desired_x_velocity = direction_x * move_speed
	var weight_x = deceleration * delta if desired_x_velocity == 0 else acceleration * delta
	velocity.x = lerp(velocity.x, desired_x_velocity, weight_x)
	
	direction_z = motion_vec.z
	var desired_z_velocity = direction_z * move_speed
	var weight_z = deceleration * delta if desired_x_velocity == 0 else acceleration * delta
	velocity.z = lerp(velocity.z, desired_z_velocity, weight_z) 
	
	
	if not is_on_floor():
		velocity.y -= gravity * delta
	elif is_on_floor() or is_on_ceiling():
		velocity.y = 0.0
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump_force
		
	var moving = move_and_slide(velocity, Vector3.UP)
	var x = round(abs(moving.x))
	var z = round(abs(moving.z))
	if x == 0 || z == 0:
		$DustFX.emitting = false
	if x != 0 || z != 0:
		$DustFX.emitting = true
		
		

	
	
	
	
	
	
	
	
	
	