extends Control



func _on_Play_Again_pressed():
	var _scene = get_tree().change_scene("res://Level_1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
