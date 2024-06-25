extends Node

const GAME_OVER = preload("res://scenes/GameOver.tscn")

func _gameOver():
	var scene = GAME_OVER.instantiate()
	add_child(scene)

func _resetGame():
	get_tree().reload_current_scene()
