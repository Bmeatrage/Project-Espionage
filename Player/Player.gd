extends KinematicBody2D

export var speed:float = 500
var velocity:Vector2 = Vector2.ZERO


# Basic Movement
func _process(delta):
	var input:Vector2 = Vector2.ZERO
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	if input != Vector2.ZERO:
		velocity = input.normalized() * speed
	else:
		velocity = Vector2.ZERO

	velocity = move_and_slide(velocity)
