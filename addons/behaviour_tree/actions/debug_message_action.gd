@icon("res://modules/behaviour_tree/assets/debug_message_action.png")
extends ActionNode
class_name DebugMessageAction

# displays the contents of message in the console

@export var message: String = ""

func tick(actor: Node, _blackboard: Blackboard) -> NodeStatus:
	print("Debug: %s %s: %s" % [actor.name, name, message])

	return NodeStatus.SUCCESS
