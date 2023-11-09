@icon("res://addon/behaviour_tree/assets/node.png")
extends TreeNode
class_name LeafNode

func _ready() -> void:
	assert(get_child_count() == 0, "%s cannot have children" % [name])

