extends Node

const ENEMY_FISH = preload("res://scenes/EnemyFish.tscn")
@export var spawn_rate = float(1)

func spawn_fish():
	var newfish = ENEMY_FISH.instantiate()
	add_child(newfish)
	init_fish(newfish)

func _process(delta):
	if(spawn_rate <= 0):
		spawn_fish()
		spawn_rate = 1
	else:
		spawn_rate -= delta

func init_fish(fish : Fish):
	var random_side = randi_range(0, 2)
	var start_position : Vector2
	#randomize x
	if(random_side == 0):
		start_position.x = -200 #left side
		fish.direction = Vector2(1,0) #look right
		fish.scale.x = -1 * abs(fish.scale.x) # Flip horizontally
		
	else:
		start_position.x = 1920 + 200 #right side
		fish.direction = Vector2(-1, 0) #look left
		
		
	fish.move_speed = randf_range(1, 3)
	
	#randomise y
	var random_y = randf_range(62, 685)
	start_position.y = random_y
	fish.position = start_position
	
