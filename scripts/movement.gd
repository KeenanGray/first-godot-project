extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
@export var MainCamera : Camera3D
@export var CameraRange : Array

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle rotate camera.
	var looking =false
	var euler = rad_to_deg(MainCamera.transform.basis.get_euler().x)
	if Input.is_action_pressed("ui_accept") and is_on_floor():
		looking=true
		if( euler < CameraRange[1]):  
			MainCamera.rotate_x(deg_to_rad(1))
	else:
		looking=false
		if(euler>CameraRange[0]):
			MainCamera.rotate_x(deg_to_rad(-1))
		
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("Left", "Right", "Up", "Down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction && !looking:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
