@icon("res://addon/behaviour_tree/assets/decorator_node.png")
extends TreeNode
class_name DecoratorNode

func _ready() -> void:
	assert(get_child_count() == 1, "%s can only have one child" % name)
