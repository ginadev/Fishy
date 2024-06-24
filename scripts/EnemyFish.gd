extends Fish
class_name EnemyFish

var distance_travelled : float
var distance_to_end = 1920 + 500

# Called when the node enters the scene tree for the first time.
func _ready():
	#set a starting position
	starting_position = Vector2(
		0,
		randf_range(0, get_viewport().size.y)
	)
	position = starting_position
	#set a direction based on starting pos
	direction = Vector2(1, 0)
	#randomize size of fish
	size = randf_range(0, 3)
	scale = Vector2(size, size)
	#change fish scale

func _process(delta):
	position += direction * move_speed
	distance_travelled += direction.length() * move_speed
	if( distance_travelled > distance_to_end):
		queue_free()
		
		
func _on_body_entered(body : Node):
	if body is Fish:
		var player_fish = body as Fish
		
		if player_fish.size >= size:
			print("Bigger fish eaten, size: " + str(player_fish.size))
			queue_free()
			player_fish._grow()
		else:
			print("Eaten by a bigger fish, size: " + str(size))
			body.queue_free()
