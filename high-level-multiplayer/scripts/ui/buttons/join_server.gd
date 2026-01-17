extends Button

func _on_pressed() -> void:
	var ip: String = $TextEdit.text
	print("pressed", $TextEdit.text)
	SignalManager.emit_signal("join_game_attempt", ip)
