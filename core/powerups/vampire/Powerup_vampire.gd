extends KinematicBody2D

func _process(delta):
	self.translate(Vector2(-10,0))
	
func _is_powerup():
	pass

func _get_powerup():
	
	get_parent().get_node("Player")._has_vampire_powerup = true
	get_parent().get_node("Player").player_health+=10
	self.queue_free()
