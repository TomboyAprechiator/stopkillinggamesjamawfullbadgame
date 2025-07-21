extends CharacterBody2D


@export var movespeed = 150
@export var gravity = 400
var movedir = 1

func _physics_process(delta: float) -> void:
	velocity.x = movespeed * movespeed * delta * movedir
	move_and_slide()
	if is_on_wall():
		movedir = movedir*-1


func _on_killarea_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.die()

func die():
	$AudioStreamPlayer2D.play()
	visible = false
	await get_tree().create_timer(1).timeout
	print("enemy died :)")
	queue_free()
