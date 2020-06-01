extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var player1Goal = $"Left Goal"
	var player2Goal = $"Right Goal"
	
	player1Goal.connect("victory", self, "on_victory")
	player2Goal.connect("victory", self, "on_victory")
	
	#player1Goal.
	pass # Replace with function body.

func on_victory(player):
	print(player)
