# Avoid changing Sprite2D node position.
extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_up", "move_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	#var collision = move_and_collide(velocity * delta)
	#if collision:
		#velocity = velocity.bounce(collision.get_normal())
	move_and_collide(velocity * delta)
