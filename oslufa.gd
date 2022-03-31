extends SpringArm
export var max_rotation_speed = 0.5

var bullet = preload("res://pocisk.tscn")
var bullet_speed = 100

func _process(delta):
	var rotz = 0
	var end_pos = $"KinematicBody/koniec"
	rotz = Input.get_action_strength("up") - Input.get_action_strength("down")
	if Input.get_action_strength("up") and rotation_degrees.z < -20:
		rotate_z(rotz  * delta * max_rotation_speed)	
	if Input.get_action_strength("down") and rotation_degrees.z > -90:
		rotate_z(rotz  * delta * max_rotation_speed) 
	
	if Input.is_action_just_pressed("shot"):
		var bullet_instance = bullet.instance()
		bullet_instance.global_transform =  end_pos.global_transform
		print(rotation_degrees.x)
		bullet_instance.apply_impulse(Vector3.ZERO, Vector3(bullet_speed,0, rotation_degrees.y).rotated(end_pos.rotation, 1))
		get_tree().get_root().add_child(bullet_instance)

