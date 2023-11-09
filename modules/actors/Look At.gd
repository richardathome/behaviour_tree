extends ActionNode
class_name LookAtAction

@export var target: Node2D

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	assert(actor is Actor, "actor is not an Actor")

	actor = actor as Actor

	if not target:
		actor.l
		return S
