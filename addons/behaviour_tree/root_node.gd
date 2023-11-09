@icon("res://addon/behaviour_tree/assets/behaviour_tree.png")
extends BehaviourTree
class_name RootNode

var is_active: bool = true

@onready var blackboard = Blackboard.new()

func _ready() -> void:
	assert(get_child_count() == 1, "Root must have one child")

func _physics_process(delta: float) -> void:
	if not is_active:
		return

	blackboard._set("delta", delta)

	var node: TreeNode = get_child(0) as TreeNode
	node.tick(get_parent(), blackboard)


