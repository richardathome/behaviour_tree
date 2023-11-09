@icon("res://modules/behaviour_tree/assets/always_fail_decorator.png")
extends DecoratorNode
class_name AlwaysFailDecorator

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	var child = get_child(0)

	if child is TreeNode:
		if child.tick(actor, blackboard) == NodeStatus.RUNNING:
			return NodeStatus.RUNNING

	return NodeStatus.SUCCESS
