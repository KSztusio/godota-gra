extends SpringArm
export(float) var rotation_amount = 0.1
export(float) var new_rotation
export(float) var movement_time = 0.1
func _ready():
	new_rotation = rotation
func _process(delta):
	handle_movement_input(delta)
func handle_movement_input(delta):
	if(Input.is_action_pressed("left")):
		new_rotation += Quat(Vector3.UP* rotation_amount).get_euler()
	if(Input.is_action_pressed("right")):
		new_rotation += Quat(Vector3.DOWN * rotation_amount).get_euler()
	rotation = rotation.linear_interpolate(new_rotation, delta * movement_time)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
