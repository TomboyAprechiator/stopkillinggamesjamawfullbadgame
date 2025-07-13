extends Node2D

var mouseangle: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mousedir = get_global_mouse_position() - $Player.global_position
	if mousedir.length() > 50:
		mouseangle = $Player.global_position.angle_to_point(get_global_mouse_position())
	$gun.rotation = mouseangle
	$gun.position = Vector2($gun.orbitradius*cos(mouseangle),$gun.orbitradius*sin(mouseangle))
