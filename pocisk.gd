extends RigidBody
var timer = Timer.new()
export var speed = 250
var done = 0
var col = []
onready var r = get_node('rad')
var tt = preload('tonk.tscn')
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
		

func _on_rad_body_entered(body):
	if "tonk" in body.get_name():
		queue_free()
		body.queue_free()
	if body.get_name() == 'lvl':
		queue_free()
	
