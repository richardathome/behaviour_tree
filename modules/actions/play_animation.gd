extends ActionNode
class_name PlayAnimationAction

var animation_root: String

func _ready() -> void:
	super()
	assert(animation_root == "", "Animation Root not set")


func tick(actor: Node, blackboard: Blackboard) -> NodeStatus:
	if not "animation_player" in actor:
		assert("%s is missing Animation Player" % actor.name)

	actor = actor as Node2D
	var animation_player: AnimationPlayer = actor.animation_player

	var facing: String = "down"

	if "look_target" in actor:
		facing = direction_to_facing(actor.global_position.direction_to(agent.look_target))

	var animation_name: String = "%s_%s" % [animation_root, facing]

	if animation_player.current_animation == animation_name:
		return NodeStatus.SUCCESS

	if not animation_player.has_animation(animation_name):
		assert("%s %s missing animation %" % [actor.name, name, animation_name])

	animation_player.play(animation_name)

	return NodeStatus.SUCCESS


func direction_to_facing(direction: Vector2, tolerance: float = 0.25) -> String:
	var facing: String = ""

	if direction.y < -tolerance:
		facing += "up"
	elif direction.y > tolerance:
		facing += "down"

	if direction.x < -tolerance:
		facing += "left"
	elif direction.x > tolerance:
		facing += "right"

	if facing == "":
		facing = "down"

	return facing
