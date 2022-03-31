extends SpringArm
export var max_rotation_speed = 0.5
func _process(delta):
	var roty = 0
	roty = Input.get_action_strength("right") - Input.get_action_strength("left")
	if Input.get_action_strength("right") and rotation_degrees.y > -90:
		rotate_y(-roty * delta * max_rotation_speed)	
	if Input.get_action_strength("left") and rotation_degrees.y < 90:
		rotate_y(-roty * delta * max_rotation_speed) 
