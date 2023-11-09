@icon("res://modules/behaviour_tree/assets/control_node.png")
extends TreeNode
class_name ControlNode

func _ready() -> void:
	assert(get_child_count() != 0, "%s must have children" % name)
