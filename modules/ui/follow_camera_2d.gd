extends Camera2D
class_name FollowCamera2D

@export var follow_target: Node2D
@onready var root_node: RootNode = get_node("RootNode")

func _physics_process(_delta: float) -> void:
	root_node.blackboard._set("target", follow_target)
	pass
