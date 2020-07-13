extends CanvasLayer

func _ready():
	$Control/TextureRect/HBoxContainer/LifeCount.text = "3"
	
func update_gui(lives_left, coins_count):
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(lives_left)
	$Control/TextureRect/HBoxContainer/CoinCount.text = str(coins_count)
