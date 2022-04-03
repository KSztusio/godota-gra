extends Spatial
var rng = RandomNumberGenerator.new()
var tonk = preload("res://tonk.tscn")
func _on_Timer_timeout():
	rng.randomize()
	var number = rng.randi_range(0, 5)
	if number == 1:
		var tonk_instance = tonk.instance()
		tonk_instance.transform = global_transform
		get_tree().get_root().add_child(tonk_instance)
