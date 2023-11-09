@icon("res://addon/behaviour_tree/assets/sequence_node.png")
extends ControlNode
class_name SequenceNode

# ticks each child in succession until one returns FAILED or RUNNING

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	for child in get_children():
		child = child as TreeNode

		match child.tick(actor, blackboard):

			NodeStatus.RUNNING:
				return NodeStatus.RUNNING

			NodeStatus.FAILED:
				return NodeStatus.FAILED

	return NodeStatus.SUCCESS
