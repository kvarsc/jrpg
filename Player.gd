extends KinematicBody2D
# This script controls movement
var motion = Vector2()
const speed = 150
const fastmult = 2

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0
	if Input.is_action_pressed("ui_up"):
		motion.y = -speed
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
	else:
		motion.y = 0
		
	if Input.is_action_pressed("ui_shift"):
		motion = fastmult*motion
		
	move_and_slide(motion)
