extends Node2D

var lastTime: int = 0
var curTime: float = 0.0

var meteorite_scene = preload("res://scenes/Meteor.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	curTime += delta
	if (lastTime < floor(curTime)):
		spawn_meteorites()
		lastTime = curTime
	
func spawn_meteorites():
	var meteorite = meteorite_scene.instantiate()
	meteorite.position = Vector2(randf() * 800, 0)
	add_child(meteorite)
