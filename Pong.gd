extends KinematicBody2D

export (Vector2) var velocity = Vector2(-100, 100)
# Controls the Pong behavior

# On game init, will randomly choose which player to go to
# If the ball collides with a players boundary, it will end the game

# Called when the node enters the scene tree for the first time.
func _ready():
	game_start()
	pass # Replace with function body.

func game_start():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Goal_body_entered(_body):
	print("Right player won!")
#	print(_body.player)
	print("has won")
	pass

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		var motion = collision.remainder.bounce(collision.normal)
		velocity = velocity.bounce(collision.normal)
		move_and_collide(motion)
