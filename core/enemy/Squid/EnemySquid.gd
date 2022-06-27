extends KinematicBody2D

var enemy_health:int=2
var enemy_damage:int=3
func _process(delta):
	randomize()
	self.translate(Vector2(-2,0))
			
		
func _is_enemy():
	pass
func enemy_hit(var damage:int):
	self.enemy_health -= damage
	if self.enemy_health == 0:
		self.queue_free()
func _do_damage():
	return enemy_damage
