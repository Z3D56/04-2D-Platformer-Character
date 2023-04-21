extends Node

var score = 0
var lives = 3
var level = 1
onready var scorelabel = get_node("CanvasLayer/RichTextLabel")

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()

func _on_Coin_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin2_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin3_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin4_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin5_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin6_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin7_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)
func _on_Coin8_coin_collected():
	score += 1
	var scoretext = "Score: " + String(score)
	print(scoretext)
	scorelabel.clear()
	scorelabel.add_text(scoretext)

