extends KinematicBody2D

func _process(delta):
	self.translate(Vector2(-4,0))

func _is_powerup():
	pass

func _get_powerup():
	get_parent().get_node("Player").bullet_speed +=33
	self.queue_free()
