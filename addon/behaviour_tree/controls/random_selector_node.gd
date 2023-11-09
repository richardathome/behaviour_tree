@icon("res://addon/behaviour_tree/assets/random_selector_node.png")
extends SelectorNode
class_name RandomSelectorNode

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	var child_index: int = randi_range(0, get_child_count()-1)
	var child: TreeNode = get_child(child_index)

	return child.tick(actor, blackboard)
