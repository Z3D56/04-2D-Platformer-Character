extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
signal coin_collected

func _on_Coin_body_entered(body):
	if body.is_in_group("Player"):
		anim_player.play("Fade")
		emit_signal("coin_collected")
