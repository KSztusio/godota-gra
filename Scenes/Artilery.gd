extends KinematicBody

export var max_rotation_speed = .5
export var drag = 4.0

func _process(delta):
	var roty = 0
	var rotz = 0

	roty = Input.get_action_strength("left") -Input.get_action_strength("right")
	rotz = Input.get_action_strength("up") - Input.get_action_strength("down")
	if Input.get_action_strength("left") > 0 and rotation_degrees.y < 45:
		rotate_y(PI * delta)
	if Input.get_action_strength("right") > 0 and rotation_degrees.y > -45:
		rotate_y(PI * delta*-1)
	if Input.get_action_strength("up") > 0 and $"oś/KinematicBody".rotation_degrees.z < 45:
		$"oś/KinematicBody".rotate_z(PI * delta*max_rotation_speed)
	if Input.get_action_strength("down") > 0 and $"oś/KinematicBody".rotation_degrees.z > 0:
		$"oś/KinematicBody".rotate_z(PI * delta*-1*max_rotation_speed)
	
