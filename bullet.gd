extends RigidBody2D

@export var force = 500.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var direction = Vector2.RIGHT.rotated(rotation)
	apply_impulse(direction*force,Vector2.ZERO)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemys") and linear_velocity.length() > 200 :
		body.die()
