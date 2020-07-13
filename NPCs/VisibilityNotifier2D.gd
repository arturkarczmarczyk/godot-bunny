extends VisibilityNotifier2D

func _ready():
	set_as_toplevel(true)
	global_position = get_parent().global_position


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
