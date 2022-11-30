extends KinematicBody2D

export (int) var speed = 10
export (int) var jump_speed = -430

var GRAVITY = 600
var GRAVITY_A = 1000
var jump_time = 0
var velocity = Vector2()

var isMoving = false
var isJumping = false
var canDoubleJump = false
var cows = 0

var time = 0
const TIME_PERIOD = 0.3


func Input():
	velocity.x = 0
	
	var LeftInput = Input.is_action_pressed("Left")
	var RightInput = Input.is_action_pressed("Right")
	var PS = $Sprite
	var anime = $AnimationPlayer
	
	if RightInput:
		velocity.x += speed
		isMoving = true
		anime.play("walk")
		PS.flip_h = false
	elif LeftInput:
		velocity.x -= speed
		isMoving = true
		anime.play("walk")
		PS.flip_h = true
	else:
		isMoving = false
		anime.play("Idle")
	if Input.is_action_pressed("boostlol"):
		if RightInput:
			velocity.x += speed * 1.4
			isMoving = true
		elif LeftInput:
			velocity.x -= speed * 1.4
			isMoving = true
	
		
	if Input.is_action_just_pressed("Jump") and jump_time < 1:
		jump_time += 1
		velocity.y = jump_speed * 1
		
	if is_on_floor():
		jump_time = 0
		

func _physics_process(delta):
	Input()
	finish()
	time += delta
	velocity.y += GRAVITY * delta
	velocity = move_and_slide(velocity, Vector2(0, -1))


func EatCow():
	cows += 1
	print(cows)
	
func finish():
	if cows == 5:
		get_tree().change_scene("res://Scenes/FInish.tscn")
		
