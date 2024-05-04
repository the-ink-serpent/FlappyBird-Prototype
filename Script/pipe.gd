extends Node2D

@onready var pipe_top = $"Killzone/Pipe Top"
@onready var collision_shape_top = $Killzone/CollisionShapeTop
@onready var pipe_bottom = $"Killzone/Pipe Bottom"
@onready var collision_shape_bottom = $Killzone/CollisionShapeBottom
@onready var scorezone = $Scorezone
@onready var score_shape = $Scorezone/CollisionShape



var pipe_speed = 100
var x_load_position = 1000
var offset = 512

func _ready():
	var rng = RandomNumberGenerator.new()
	
	#sets top pipe
	var top_pos = rng.randf_range(-100.0, -50.0)
	pipe_top.position = Vector2(x_load_position, top_pos - offset)
	collision_shape_top.position = Vector2(x_load_position, top_pos - offset)
	
	#sets bottom pipe
	var bottom_pos = rng.randf_range(50.0, 100.0)
	pipe_bottom.position = Vector2(x_load_position, bottom_pos + offset)
	collision_shape_bottom.position = Vector2(x_load_position, bottom_pos + offset)
	
	#sets scorezone
	score_shape.position = Vector2(x_load_position, 0)
	
func _physics_process(delta):
	#moves all child node
	position.x -= pipe_speed * delta
	if position.x < -1500.0:
		queue_free()
	
