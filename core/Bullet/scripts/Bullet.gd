extends Area2D
var saved_position:Vector2
var incremental_x:float = 100
var bullet_speed:int = 100
var bullet_damage:int=1
var is_vampire:bool=false
func _ready():
	saved_position = get_viewport().get_mouse_position()
	
func _process(delta):
	incremental_x+=bullet_speed*delta
	translate(to_local(Vector2(incremental_x,saved_position.y)))
	if self.position.x > get_viewport().size.x:
		self.queue_free()
func _physics_process(delta):
	pass




func _on_Bullet_body_entered(body):
	if body.has_method("_is_enemy"):
		body.enemy_hit(bullet_damage)
		if is_vampire:
			get_parent().get_parent().get_node("Player").player_health+=bullet_damage
		self.queue_free()
	
