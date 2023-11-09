@icon("res://addon/behaviour_tree/assets/blackboard.png")
extends Node
class_name Blackboard

var values: Dictionary = {}

func _set(key: StringName, value: Variant) -> bool:
	values[key] = value
	return true

func _get(key: StringName, default: Variant = null) -> Variant:
	if values.has(key):
		return values[key]

	return default
