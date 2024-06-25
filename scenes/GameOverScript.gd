extends Control


func _on_button_pressed():
	GameManager._resetGame()
	queue_free()
