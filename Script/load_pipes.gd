extends Node2D

var pipe = load("res://Scene/pipe.tscn")
var sum_delta = 0

func _ready():
	create_pipe()

func _physics_process(delta):
	sum_delta += delta
	if sum_delta > 3:
		sum_delta = 0
		create_pipe()

func create_pipe():
	var pipe_instance = pipe.instantiate()
	pipe_instance.set_position(Vector2(0, 0))
	add_child(pipe_instance)
