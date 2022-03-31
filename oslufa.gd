extends SpringArm
export var max_rotation_speed = 0.5
var bullet = preload("res://pocisk.tscn")
export var bullet_speed = 100
func _process(delta):
	var rotz = 0
	var end_pos = $"KinematicBody/koniec"
	rotz = Input.get_action_strength("up") - Input.get_action_strength("down")
	if Input.get_action_strength("up") and rotation_degrees.z < -20:
		rotate_z(rotz  * delta * max_rotation_speed)	
	if Input.get_action_strength("down") and rotation_degrees.z > -90:
		rotate_z(rotz  * delta * max_rotation_speed) 
