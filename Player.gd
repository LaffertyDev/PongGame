extends KinematicBody2D

# Called when the node enters the scene tree for the first time.

# Up and down moves the pong up and down

export (int) var Speed = 100
var velocity = Vector2()

export (String) var up_input
export (String) var down_input

func _ready():
	pass # Replace with function body.

func get_input():
	if Input.is_action_pressed(up_input):
		velocity.y = -Speed
	elif Input.is_action_pressed(down_input):
		velocity.y = Speed
	else:
		velocity.y = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	pass
