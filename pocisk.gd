extends RigidBody
export var speed = 70
func _physics_process(delta):
	global_translate(Vector3.FORWARD * speed * delta)
