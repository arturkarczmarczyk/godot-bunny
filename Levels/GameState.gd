extends Node2D

var lives = 3
var coins = 0
const NEW_LIFE_THRESHOLD = 10

func _ready():
	add_to_group("gamestate")
	update_gui()

func hurt():
	lives -= 1
	$Player.hurt()
	update_gui()
	if lives < 0:
		end_game()

func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")

func coin_up():
	coins += 1
	if coins % NEW_LIFE_THRESHOLD == 0:
		lives += 1
	update_gui()

func update_gui():
	get_tree().call_group("GUI", "update_gui", lives, coins)

