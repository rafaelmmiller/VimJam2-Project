extends KinematicBody2D

const ACCEL = 100
const MAXSPEED = 200

onready var animation = $AnimationPlayer

var motion = Vector2()

func _physics_process(delta):
	
	motion.x = clamp(motion.x, -MAXSPEED, MAXSPEED)
	motion.y = clamp(motion.y, -MAXSPEED, MAXSPEED)
	
	if Input.is_action_pressed("up"):
		motion.y -= ACCEL
	elif Input.is_action_pressed("down"):
		motion.y += ACCEL
	else:
		motion.y = 0
		
	if Input.is_action_pressed("right"):
		motion.x += ACCEL
	elif Input.is_action_pressed("left"):
		motion.x -= ACCEL
	else:
		motion.x = 0
	
	if Input.is_action_just_pressed("attack"):
		attack()
	
	motion = move_and_slide(motion, Vector2.ZERO)
	
func attack():
	print("Attacked")
	animation.play("Attack")
