extends Node2D
class_name Fish

var starting_position : Vector2
var size : int = 1
var direction : Vector2 = Vector2()
var initial_scale : Vector2 = Vector2(1,1)
@export var move_speed : float = 5.0
@onready var sprite_2d = $Sprite2D


func _ready():
	starting_position = position
	scale = initial_scale

func _grow():
	size += 1
	print(scale)
	scale = scale + Vector2(0.15,0.15)
	print(scale)
	
func _turn():
	if(direction.x < 0):
		sprite_2d.flip_h = false
	elif(direction.x > 0):
		sprite_2d.flip_h = true

func _die():
	set_process(false)
	hide()
	GameManager._gameOver()
	
