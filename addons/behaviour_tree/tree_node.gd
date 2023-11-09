@icon("res://modules/behaviour_tree/assets/node.png")
extends BehaviourTree
class_name TreeNode

enum NodeStatus {
	IDLE,
	FAILED,
	SUCCESS,
	RUNNING
}
func tick(_actor: Node, _blackboard: Blackboard) -> NodeStatus:
	return NodeStatus.IDLE
