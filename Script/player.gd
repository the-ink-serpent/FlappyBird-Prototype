extends CharacterBody2D

@onready var game_manager = %GameManager
const JUMP_VELOCITY = -450.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if Input.is_action_just_released("float") or not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("float"):
		velocity.y = JUMP_VELOCITY

	move_and_slide()
