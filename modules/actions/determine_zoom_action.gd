extends ActionNode
class_name DetermineZoomAction

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	assert(actor is FollowCamera2D, "actor is not a follow camera")

	return NodeStatus.SUCCESS
