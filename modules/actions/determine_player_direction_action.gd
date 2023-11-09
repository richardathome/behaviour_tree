extends ActionNode
class_name DeterminePlayerDirectionAction

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	assert(actor is Actor, "actor is not an Actor")

	actor = actor as Actor

	actor.direction = Input.get_vector("left", "right", "up", "down")

	return NodeStatus.SUCCESS
