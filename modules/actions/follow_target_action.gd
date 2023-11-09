extends ActionNode
class_name FollowTargetAction

@export var blackboard_key: String

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	assert(actor is Node2D, "actor is not a Node2D")
	actor = actor as Node2D

	if blackboard_key == "":
		return NodeStatus.FAILED

	var target = blackboard._get(blackboard_key)
	if not target:
		return NodeStatus.FAILED


	actor.global_position = target.global_position

	return NodeStatus.SUCCESS
