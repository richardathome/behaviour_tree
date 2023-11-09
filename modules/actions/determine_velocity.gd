extends ActionNode
class_name DetermineVelocityAction

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	assert(actor is Actor, "actor is not an Actor")
	actor = actor as Actor

	actor.velocity = actor.direction * actor.speed

	return NodeStatus.SUCCESS


