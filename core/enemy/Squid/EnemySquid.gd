extends KinematicBody2D
var difficulty:int
var base_speed:int=2
var enemy_health:int=3
var enemy_damage:int=3
func _ready():
	if difficulty<50:
		enemy_health*=difficulty
		enemy_damage*=difficulty
		base_speed = difficulty
	else:
		base_speed=difficulty
func _process(delta):
	randomize()
	self.translate(Vector2(-base_speed,0))
			
		
func _is_enemy():
	pass
func enemy_hit(var damage:int):
	self.enemy_health -= damage
	if self.enemy_health <= 0:
		self.queue_free()
func _do_damage():
	return enemy_damage
