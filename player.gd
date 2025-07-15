extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_direction = Input.get_vector("left","right","up","down")
	velocity = input_direction * 150
	move_and_slide()
	

func _on_push_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullets"):
		var diff = body.global_position - global_position
		var direction = diff.normalized()
		body.apply_impulse(direction*1000,Vector2.ZERO)
