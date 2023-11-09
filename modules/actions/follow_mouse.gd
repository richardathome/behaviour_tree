extends ActionNode
class_name FollowMouseAction

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	assert(actor is Node2D, "%s must have global_position")

	actor = actor as Node2D

	actor.global_position = actor.get_global_mouse_position()

	return NodeStatus.SUCCESS

