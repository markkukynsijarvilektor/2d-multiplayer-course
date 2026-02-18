extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$HBoxContainer/VBoxContainer/HostButton.pressed.connect(_on_host_pressed)
	$HBoxContainer/VBoxContainer/PlayButton.pressed.connect(_on_play_pressed)

func _on_host_pressed() -> void:
	print("host pressed")
	
func _on_play_pressed() -> void:
	print("play pressed")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_mouse_entered() -> void:
	pass # Replace with function body.


func _on_play_button_mouse_exited() -> void:
	pass # Replace with function body.
