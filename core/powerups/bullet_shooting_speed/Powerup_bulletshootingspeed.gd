extends KinematicBody2D

func _process(delta):
	self.translate(Vector2(-4,0))

func _is_powerup():
	pass

func _get_powerup():
	get_parent().get_node("Player")._set_player_shooting_speed(get_parent().get_node("Player").player_shooting_speed/1.25) 
	self.queue_free()
