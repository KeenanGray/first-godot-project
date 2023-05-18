extends Camera3D

@export_group("Camera Follow Properties")
@export var follow_distance : float = -1
@export var character : Node # assign the player node here

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform.origin.x = character.transform.origin.x
	transform.origin.y = character.transform.origin.y + 1.8
	transform.origin.z = character.transform.origin.z - follow_distance
