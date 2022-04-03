extends Spatial
var rng = RandomNumberGenerator.new()
var tonk = preload("res://tonk.tscn")
func _process(_delta):
	rng.randomize()
	var number = rng.randi_range(0, 700)
	if number == 1:
		var tonk_instance = tonk.instance()
		tonk_instance.transform = global_transform
		get_tree().get_root().add_child(tonk_instance)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
