@icon("res://addon/behaviour_tree/assets/inverter_decorator.png")
extends DecoratorNode
class_name InverterDecorator


func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	if actor is TreeNode:
		var child: TreeNode = get_child(0)
		match child.tick(actor, blackboard):
			NodeStatus.RUNNING:
				return NodeStatus.RUNNING

			NodeStatus.SUCCESS:
				return NodeStatus.FAILED

	return NodeStatus.SUCCESS
