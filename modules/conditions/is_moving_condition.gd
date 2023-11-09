extends ConditionNode
class_name IsMovingCondition

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	assert(actor is Actor, "actor is not an Actor")

	actor = actor as Actor

	if actor.direction == Vector2.ZERO:
		return NodeStatus.FAILED

	return NodeStatus.SUCCESS
