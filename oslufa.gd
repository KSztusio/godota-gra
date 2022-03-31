extends Spatial
export var max_rotation_speed = 0.5

var bullet = preload("res://pocisk.tscn")
var bullet_speed = 100

func _process(delta):
	var rotz = 0
	var roty = 0
	if Input.get_action_strength("left") > 0 and rotation_degrees.y < 45:
		rotate_y(PI * delta * max_rotation_speed)
		$KinematicBody/koniec.rotate_y(PI * delta * max_rotation_speed)
	if Input.get_action_strength("right") > 0 and rotation_degrees.y > -45:
		rotate_y(PI * delta*-1 * max_rotation_speed)
		$KinematicBody/koniec.rotate_y(PI * delta*-1 * max_rotation_speed)
	if Input.get_action_strength("up") and rotation_degrees.z < -20:
		rotate_z(delta * max_rotation_speed)	
		$KinematicBody/koniec.rotate_z(delta * max_rotation_speed)	
	if Input.get_action_strength("down") and rotation_degrees.z > -90:
		rotate_z(delta * max_rotation_speed) 
		$KinematicBody/koniec.rotate_z(delta * max_rotation_speed) 
	
	if Input.is_action_just_pressed("shot"):
		var bullet_instance = bullet.instance()
		bullet_instance.global_transform =  $KinematicBody/koniec.global_transform
		print($KinematicBody/koniec.global_transform)
#		bullet_instance.apply_impulse(Vector3.ZERO, Vector3(bullet_speed,0, rotation_degrees.y).rotated(end_pos.rotation, 1))
		get_tree().get_root().add_child(bullet_instance)

