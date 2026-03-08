extends Camera3D

var mouse_sensitivity = 0.002

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):

	if event is InputEventMouseMotion:

		rotate_y(-event.relative.x * mouse_sensitivity)

		var rot = rotation.x - event.relative.y * mouse_sensitivity
		rotation.x = clamp(rot, -1.2, 1.2)
