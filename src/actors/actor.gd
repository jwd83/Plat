extends KinematicBody2D
class_name actor


export var speed: = Vector2(300,1000)
export var gravity: = 3000.0

var velocity: = Vector2.ZERO

func _physics_process(delta):
	#300 on xand 0 on y
	velocity.y += gravity * delta
	velocity.y = max(velocity.y, speed.y)
	velocity = move_and_slide(velocity)

