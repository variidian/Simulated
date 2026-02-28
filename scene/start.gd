extends Node2D
@onready var starting_dialogue = preload("res://dialogue/start.dialogue")
@onready var main_bg_changes = $main_bg
@onready var text_changes = $text
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(starting_dialogue, "start")
	main_bg_changes.play("default")
	text_changes.play("sleep")
	global.eyes.connect(open_eyes)
	global.shout.connect(shout_name)
	global.house.connect(to_house)
func open_eyes(_data = null):
	main_bg_changes.play("openeyes")
	text_changes.hide()
func shout_name(_data = null):
	text_changes.play("shout_name")
func to_house(_data = null):
	main_bg_changes.play("house")
