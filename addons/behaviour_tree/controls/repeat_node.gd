@icon("res://modules/behaviour_tree/assets/repeater_node.png")
extends ControlNode
class_name RepeatNode

@export var repeat_after_failure: bool = false

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	for child in get_children():
			var result: NodeStatus = child.tick(actor, blackboard)

			if result == NodeStatus.FAILED \
			and not repeat_after_failure:
				return NodeStatus.FAILED

			if result == NodeStatus.RUNNING:
				return NodeStatus.RUNNING

	return NodeStatus.RUNNING
