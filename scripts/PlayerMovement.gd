extends Fish

var player_speed = 1000
var edge_of_screen: = Vector2(1920, 1080)
var growth_per_fish = 0.01
var fish_scale = 0.08
@onready var player = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	size = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input = Input.get_vector("move_left","move_right","move_up","move_down").normalized()
	direction = input
	_turn()
	player.velocity = input * player_speed
	player.move_and_slide()
	position.x = clampf(position.x, 0, edge_of_screen.x)
	position.y = clampf(position.y, 0, edge_of_screen.y)
	
