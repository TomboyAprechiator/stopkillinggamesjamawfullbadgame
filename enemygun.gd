extends Node2D

@export var orbitradius: float = 60
@export var bulletscene: PackedScene

func shoot():
	var bullet = bulletscene.instantiate()
	bullet.global_position = $muzzle.global_position
	bullet.rotation = rotation
	get_tree().current_scene.add_child(bullet)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Shoot"):
		shoot()
	
