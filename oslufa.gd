extends SpringArm
export(float) var rotation_amount = 10000
func _process(delta):
	handle_movement_input(delta)
func handle_movement_input(delta):
	if(Input.is_action_pressed("up")):
		rotation_degrees.x += rotation_amount
		rotation_degrees.x = clamp(rotation_degrees.x, -90.0, -20.0)
	if(Input.is_action_pressed("down")):
		rotation_degrees.x -= rotation_amount
		rotation_degrees.x = clamp(rotation_degrees.x, -90.0, -20.0)
