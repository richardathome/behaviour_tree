@icon("res://modules/behaviour_tree/assets/blackboard_condition.png")
extends ConditionNode
class_name BbValueIsSetCondition

@export var blackboard_key: String

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	if blackboard._get(blackboard_key, null) == null:
		return NodeStatus.FAILED

	return NodeStatus.SUCCESS
