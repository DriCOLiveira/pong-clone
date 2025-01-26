extends RigidBody2D

var original_position

func _ready():
	original_position = Vector2(global_position.x, global_position.y)

func reset_position():
	PhysicsServer2D.body_set_state(
	get_rid(),
	PhysicsServer2D.BODY_STATE_TRANSFORM,
	Transform2D.IDENTITY.translated(original_position)
)
