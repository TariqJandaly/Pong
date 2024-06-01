extends CharacterBody2D

var ballSpeedX = 100
var ballSpeedY = 20

var yAxis := 0
var xAxis := 0

@onready var right = $Right
@onready var left = $Left
@onready var up = $Up
@onready var down = $Down


func _ready():
	xAxis = pow(-1, randi() % 2)
	yAxis = pow(-1, randi() % 2)
	
	print(xAxis)
	print(yAxis)

func _physics_process(delta):
	
	if right.is_colliding():
		xAxis = -1
		hit()
	if left.is_colliding():
		xAxis = 1
		hit()
	if down.is_colliding():
		yAxis = -1
		hit()
	if up.is_colliding():
		yAxis = 1
		hit()
	
	# Move the ball
	velocity.x = xAxis * ballSpeedX
	velocity.y = yAxis * ballSpeedY
	
	move_and_slide()

func hit():
	ballSpeedX += 2
	ballSpeedY += .2
