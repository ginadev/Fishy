extends Control

@onready var player_fish_icon = $"../Player/Sprite2D"
@onready var player_fish_collision = $"../Player/CollisionShape2D"

# Load fish icons from assets folder
var blue_fish_icon = preload("res://assets/blue_fish.png")
var yellow_fish_icon = preload("res://assets/yellow_fish.png")
var orange_fish_icon = preload("res://assets/orange_fish.png")

func _ready():
# Assign icons to the buttons (assuming you have button nodes named 'BlueFishButton', 'RedFishButton', etc.)
	$"Fish Options/Blue Fish".icon = blue_fish_icon
	$"Fish Options/Yellow Fish".icon = yellow_fish_icon
	$"Fish Options/Orange Fish".icon = orange_fish_icon
# Connect buttons to the respective functions
	$"Fish Options/Blue Fish".connect("pressed", Callable(self, "_on_blue_fish_pressed"))
	$"Fish Options/Yellow Fish".connect("pressed", Callable(self, "_on_yellow_fish_pressed"))
	$"Fish Options/Orange Fish".connect("pressed", Callable(self, "_on_orange_fish_pressed"))
	
func _on_new_game_button_pressed():
	player_fish_collision.set_disabled(false)
	queue_free()	

func _on_blue_fish_pressed():
	player_fish_icon.texture = blue_fish_icon

func _on_orange_fish_pressed():
	player_fish_icon.texture = orange_fish_icon

func _on_yellow_fish_pressed():
	player_fish_icon.texture = yellow_fish_icon
