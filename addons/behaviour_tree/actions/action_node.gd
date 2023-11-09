@icon("res://modules/behaviour_tree/assets/action_node.png")
extends TreeNode
class_name ActionNode

func _ready() -> void:
	assert(get_child_count() == 0, "%s cannot have children" % name)
