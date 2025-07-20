extends CharacterBody2D

@export var movespeed = 150
@export var gravity = 400
@export var jumpforce = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta):
	#gravity
	velocity.y += gravity * delta
	
	#lr movement
	var lr_direction = 0
	if Input.is_action_pressed("left"):
		lr_direction = -1
	if Input.is_action_pressed("right"):
		lr_direction = 1
	
	velocity.x = lr_direction * movespeed
	
	#jump
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = -jumpforce
	
	#process
	move_and_slide()
func _on_push_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullets"):
		var diff = body.global_position - global_position
		var direction = diff.normalized()
		body.apply_impulse(direction*1000,Vector2.ZERO)
		
func die():
	print("You are dead, dead dead! Tought you was hot - guess what, you're not")
