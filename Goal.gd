extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (int) var player

signal defeat(player)

# Called when the node enters the scene tree for the first time.
func _ready():
	var res = self.connect("body_entered", self, "onGoalEnter")
	if res != OK:
		print("unrecoverable error")
	

func onGoalEnter(body):
	if body.get_name() != "Pong":
		return;
		
	print(body.get_name())
	emit_signal("defeat", player)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
