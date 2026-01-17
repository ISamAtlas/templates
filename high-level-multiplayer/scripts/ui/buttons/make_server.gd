extends Button

func _ready() -> void:
	pressed.connect(_on_pressed) ## Automatically connects button to signal

func _on_pressed() -> void:
	HighLevelMultiplayer.start_server()
