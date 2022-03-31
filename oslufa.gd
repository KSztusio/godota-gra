extends SpringArm
export var max_rotation_speed = 0.4


func _process(delta):
	var rotz = 0
	rotz = Input.get_action_strength("up") - Input.get_action_strength("down")
	if Input.get_action_strength("up") and rotation_degrees.z < -20:
		rotate_z(rotz  * delta * max_rotation_speed)	
	if Input.get_action_strength("down") and rotation_degrees.z > -90:
		rotate_z(rotz  * delta * max_rotation_speed) 
