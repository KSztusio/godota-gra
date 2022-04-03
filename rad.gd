extends Area
export var col = []
onready var t = get_node('ttonk')
func _process(delta):
	col = get_overlapping_areas()
	print(col.size(),t)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
