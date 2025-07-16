extends Node2D
var roomsize = Vector2(1280, 720)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Camera2D.global_position = $Rooms/room1/CollisionShape2D.global_position
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_room_1_body_entered(body) -> void:
	if body.is_in_group("bullets") == false: 
		print("in room 1")
		$Camera2D.global_position = $Rooms/room1.global_position


func _on_room_2_body_entered(body) -> void:
	if body.is_in_group("bullets") == false:
		print("in room 2")
		$Camera2D.global_position = $Rooms/room2.global_position


func _on_room_3_body_entered(body) -> void:
	if body.is_in_group("bullets") == false:
		print("in room 3")
		$Camera2D.global_position = $Rooms/room3.global_position


func _on_room_4_body_entered(body) -> void:
	if body.is_in_group("bullets") == false:
		print("in room 4")
		$Camera2D.global_position = $Rooms/room4.global_position
