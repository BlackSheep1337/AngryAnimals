extends RigidBody2D

func _physics_process(delta) -> void:
	update_debug_label()


func update_debug_label() -> void:
	var s = "g_pos:%s\n" % [
		Utils.vec2_to_str(global_position)
	]
	s += "ang_vel:%1.f\nlinear_vel:%s" % [
		angular_velocity,
		Utils.vec2_to_str(linear_velocity)
	]
	SignalManager.on_update_debug_label.emit(s)