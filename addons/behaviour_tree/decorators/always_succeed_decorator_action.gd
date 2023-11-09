@icon("res://modules/behaviour_tree/assets/always_succeed_decorator.png")
extends DecoratorNode
class_name AlwaysSucceedDecorator

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	if actor is TreeNode:
		var child: TreeNode = get_child(0)

		if child.tick(actor, blackboard) == NodeStatus.RUNNING:
			return NodeStatus.RUNNING

	return NodeStatus.SUCCESS
