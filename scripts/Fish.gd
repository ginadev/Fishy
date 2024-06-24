extends Node2D
class_name Fish

var starting_position : Vector2
var size : int = 1
@export var move_speed : float = 5.0
var direction : Vector2 = Vector2()
@onready var sprite_2d = $Sprite2D

func _ready():
	starting_position = position
	scale = Vector2(0.1, 0.1)  # Adjust initial scale here (example: 0.1)

func _grow():
	size += 1
	var fish_scale = 0.08  # Adjust growth rate here
	scale = Vector2(size * fish_scale, size * fish_scale)  # Scale based on size
	
func _turn():
	if(direction.x < 0):
		sprite_2d.flip_h = false
	elif(direction.x > 0):
		sprite_2d.flip_h = true
