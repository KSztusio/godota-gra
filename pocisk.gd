extends RigidBody
export var speed = 150
export var done = 0
onready var r = get_node('rad')
func _physics_process(_delta):
	var vy = 0
	var vpoziom = 0
	var vx = 0
	var vz = 0
	if done == 0:
		vy = sin(PI/2 + rotation.z) * speed
		vpoziom = cos(PI/2 + rotation.z) * speed
		vx = cos(rotation.y) * vpoziom
		vz = -sin(rotation.y) * vpoziom
		apply_impulse(Vector3.ZERO, Vector3(vx, vy, vz))
		done = 1
