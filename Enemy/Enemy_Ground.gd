extends KinematicBody2D

export var speed = 2
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO

func _physics_process(_delta):
	if direction < 0 and !$Sprite.flip_h:
		$Sprite.flip_h = true
	if direction > 0 and !$Sprite.flip_h:
		$Sprite.flip_h = false
	
	velocity.x += direction * speed
	move_and_slide_with_snap(velocity, Vector2.UP)
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		print(collision.collider.name)
		if collision.collider.name == "Platform" or collision.collider.name == "Ground":
			direction *= -1
			velocity.x = 0
		if collision.collider.name == "Player":
			collision.collider.do_damage(damage)


func _on_Area2D_body_entered(body):
	if velocity.x != 0 and (body.name == "Platform" or body.name == "Ground"):
		direction *= -1
		velocity.x = 0
	if body.name == "Player":
		body.do_damage(damage)

