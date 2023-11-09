@icon("res://addon/behaviour_tree/assets/delay_action.png")
extends ActionNode
class_name DelayAction

# returns RUNNING until delay ms have passed, then returns SUCCESS
# and resets it's timer

@export var delay: float
@export var switch_status: NodeStatus

var end_time: float = 0

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	if end_time == 0:
		end_time = Time.get_ticks_msec() + delay

	if Time.get_ticks_msec() > end_time:
		end_time = 0
		return switch_status

	return NodeStatus.RUNNING

