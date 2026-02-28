extends Node2D
@onready var starting_dialogue = preload("res://dialogue/start.dialogue")
@onready var main_bg_changes = $main_bg
@onready var text_changes = $text
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(starting_dialogue, "start")
	main_bg_changes.play("default")
	text_changes.play("sleep")
	print("_ready ran")
	print("READY instance:", self)
func eye():
	print("ran 'eye'")
	main_bg_changes.play("openeyes")
	text_changes.stop()
	print("self:", self)
	print("in tree:", is_inside_tree())
	print("visible:", visible)
	print("parent:", get_parent())
