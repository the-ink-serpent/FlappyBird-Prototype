extends Node

@onready var score_label = $"../Score"
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	score_label.get_node("CanvasLayer/Label").text = str(score)

func add_score():	
	score += 1
	score_label.get_node("CanvasLayer/Label").text = str(score)
