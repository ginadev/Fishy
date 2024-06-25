extends Node

const START_GAME = preload("res://scenes/StartGame.tscn")
const GAME_OVER = preload("res://scenes/GameOver.tscn")

func _startGame():
	var scene = START_GAME.instantiate()
	add_child(scene)

func _gameOver():
	var scene = GAME_OVER.instantiate()
	add_child(scene)

func _resetGame():
	get_tree().reload_current_scene()
