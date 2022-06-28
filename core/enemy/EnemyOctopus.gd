extends KinematicBody2D
var difficulty:int
var base_speed:int=2
var enemy_health:int=1
var enemy_damage:int=1
func _ready():
	if difficulty<100:
		enemy_health*=difficulty
		enemy_damage*=difficulty
	if difficulty>=3:
		base_speed = 3
	else:
		base_speed=difficulty
func _process(delta):
	self.translate(Vector2(-base_speed,0))
	
func _is_enemy():
	pass
func enemy_hit(var damage:int):
	self.enemy_health -= damage
	if self.enemy_health <= 0:
		self.queue_free()
func _do_damage():
	return enemy_damage
