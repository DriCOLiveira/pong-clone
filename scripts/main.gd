extends Node

func _ready() -> void:
	PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY, 600)
	PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY_VECTOR, Vector2.LEFT)
	await get_tree().create_timer(0.5).timeout
	PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY, 0)

func _process(delta: float):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().reload_current_scene()

func _on_goal_body_entered(body: Node2D) -> void:
	$HUD.update_score2()
	$Ball.reset_position()

func _on_goal_2_body_entered(body: Node2D) -> void:
	$HUD.update_score1()
	$Ball.reset_position()
