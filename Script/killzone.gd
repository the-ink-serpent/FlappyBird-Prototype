extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	body.velocity.y = 1500
	timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()
