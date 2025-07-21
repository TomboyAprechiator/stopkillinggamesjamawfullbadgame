extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://level.tscn")



func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_about_pressed() -> void:
	$Window.visible = true



func _on_window_close_requested() -> void:
	$Window.visible = false
