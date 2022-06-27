extends KinematicBody2D

var enemy_health:int=1
var enemy_damage:int=1
func _process(delta):
	self.translate(Vector2(-1,0))
	
func _is_enemy():
	pass
func enemy_hit(var damage:int):
	self.enemy_health -= damage
	if self.enemy_health == 0:
		self.queue_free()
func _do_damage():
	return enemy_damage
