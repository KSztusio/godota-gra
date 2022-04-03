extends KinematicBody
export var speed = 20
var timer = Timer.new()
var _velocity = Vector3.ZERO
func _physics_process(delta):
	_velocity = Vector3(speed*delta, 0, 0)
	_velocity = move_and_collide(_velocity, true, true, false)
func _ready():
	pass
func _on_hitbox_body_entered(body):
	if body.get_name() == 'pocisk':
		queue_free()
