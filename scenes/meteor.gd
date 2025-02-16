extends Area2D

var hit_count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	


func _on_Meteor_body_entered(body: RigidBody2D) -> void:
	if (body.name == "BlueShip"):
		body.collision_mask = 10
		body.collision_layer = 10
		print("You Died")
