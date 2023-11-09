extends ConditionNode
class_name IsMovingCondition

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:

	if actor is Actor \
	and actor.direction == Vector2.ZERO:
		return NodeStatus.SUCCESS

	return NodeStatus.FAILED
