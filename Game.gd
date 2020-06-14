extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var player1Goal = $"Left Goal"
	var player2Goal = $"Right Goal"
	
	player1Goal.connect("defeat", self, "on_defeat")
	player2Goal.connect("defeat", self, "on_defeat")
	
	#player1Goal.
	pass # Replace with function body.

func on_defeat(player):
	print(player)
	var res = get_tree().change_scene("res://MainMenu.tscn")
	if res != OK:
		print("heavy failure")
