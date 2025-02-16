extends Area2D

@export var speed = 500.0

var current_body:RigidBody2D = null

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up"):
		move_local_y(-speed * delta, false)
	
	if Input.is_action_pressed("move_down"):
		move_local_y(speed * delta, false)
		
	if Input.is_action_pressed("move_right"):
		move_local_x(speed * delta, false)
		if (current_body != null):
			current_body.linear_velocity = Vector2(speed/1.25,0)
		
	if Input.is_action_pressed("move_left"):
		move_local_x(-speed * delta, false)
		if (current_body != null):
			current_body.linear_velocity = Vector2(-speed/1.25,0)

func _on_PlatformBlue2_body_entered(body: RigidBody2D) -> void:
	if (body.name == "BlueShip"):
		current_body = body

func _on_PlatformBlue2_body_exited(body: RigidBody2D) -> void:
	if (body.name == "BlueShip"):
		current_body = null
