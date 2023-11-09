@icon("res://modules/behaviour_tree/assets/condition_node.png")
extends TreeNode
class_name ConditionNode

func _ready() -> void:
	assert(get_child_count() == 0, "%s cannot have children" % name)

func tick(_actor: Node, _blackboard: Blackboard):
	assert(false, "not implented")
