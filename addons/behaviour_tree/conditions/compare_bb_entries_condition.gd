@icon("res://addon/behaviour_tree/assets/blackboard_condition.png")
extends ConditionNode
class_name CompareBbEntriesCondition

@export var blackboard_key_a: StringName
@export var blackboard_key_b: StringName

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	if blackboard.get(blackboard_key_a) == blackboard.get(blackboard_key_b):
		return NodeStatus.SUCCESS

	return NodeStatus.FAILED
