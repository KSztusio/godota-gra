extends SpringArm
var bullet = preload("res://pocisk.tscn")
func _process(_delta):
	if Input.is_action_just_pressed("shot"):
		var bullet_instance = bullet.instance()
		bullet_instance.transform = global_transform
		get_tree().get_root().add_child(bullet_instance)
