extends ActionNode
class_name LookAtTargetAction

@export var target: Node2D

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	assert(actor is Actor, "actor is not an actor")

	if not target:
		return NodeStatus.FAILED

	actor = actor as Actor

	actor.look_target = target.global_position

	return NodeStatus.SUCCESS
