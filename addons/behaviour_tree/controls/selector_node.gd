@icon("res://addon/behaviour_tree/assets/selector_node.png")
extends ControlNode
class_name SelectorNode

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	for child in get_children():
		child = child as TreeNode

		match child.tick(actor, blackboard):
			NodeStatus.SUCCESS:
				return NodeStatus.SUCCESS

			NodeStatus.RUNNING:
				return NodeStatus.RUNNING


	return NodeStatus.FAILED
