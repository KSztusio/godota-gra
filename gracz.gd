extends KinematicBody
export var speed := 7.0
export var jump_strenght := 20.0
export var gravity := 50
export var mouse_sensitivity = 1

var _velocity := Vector3.ZERO
var _snap_vector := Vector3.DOWN
onready var _model: Spatial = $MeshInstance
func _physics_process(delta: float) -> void:
	var move_direction := Vector3.ZERO
func _unhandled_input(event: InputEvent) -> void:
	rotation_degrees.x -= event.relative.y * mouse_sensitivity
	rotation_degrees.x = clamp(rotation_degrees.x, -90.0, 30.0)
	rotation_degrees.y -= event.relative.x * mouse_sensitivity
	rotation_degrees.y = wrapf(rotation_degrees.y, 0.0, 360.0)






func _ready():
	pass # Replace with function body.
