extends KinematicBody
export var speed = 20
var _velocity = Vector3.ZERO
func _physics_process(delta):
	_velocity = Vector3(speed*delta, 0, 0)
	_velocity = move_and_collide(_velocity, true, true, false)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
