@icon("res://addon/behaviour_tree/assets/debug_message_action.png")
extends ActionNode
class_name DebugBlackboardMessageAction

# displays the contents of blackboard[blackboard_key] in the console

@export var blackboard_key: StringName

func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	print("%s.%s = %s" % [actor.name, blackboard_key, blackboard._get(blackboard_key)])
	return NodeStatus.SUCCESS
