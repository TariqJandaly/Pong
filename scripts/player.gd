extends CharacterBody2D

var SPEED = 100
@export var Player = 1

func _physics_process(delta):
	var dirY = 0
	
	if Player == 1:
		dirY = Input.get_axis("up", "down") * SPEED
	else:
		dirY = Input.get_axis("ui_up", "ui_down") * SPEED
	
	velocity.y = dirY
	
	move_and_slide()
