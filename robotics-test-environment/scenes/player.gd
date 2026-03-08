extends CharacterBody3D

const SPEED = 5.0

func _physics_process(delta):

	var input_dir = Input.get_vector("ui_left","ui_right","ui_up","ui_down")

	velocity.x = input_dir.x * SPEED
	velocity.z = input_dir.y * SPEED

	move_and_slide()
