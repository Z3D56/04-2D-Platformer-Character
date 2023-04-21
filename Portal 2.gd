extends Area2D

var entered = false

func _on_Portal_2_body_entered(_body: PhysicsBody2D):
	entered = true

func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene("res://Level 3.tscn")
