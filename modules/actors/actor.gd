extends CharacterBody2D
class_name Actor

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var speed: float = 80

var direction: Vector2 = Vector2.ZERO
var look_target: Vector2

func _physics_process(delta: float) -> void:
	move_and_collide(velocity * delta)
