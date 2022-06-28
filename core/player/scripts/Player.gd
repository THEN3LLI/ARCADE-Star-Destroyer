extends Area2D

var player_speed:float=10 setget _set_player_speed
var player_health:int=10 setget _set_player_health
var player_attack:int=1 setget _set_player_attack
var player_name:String="" setget _set_player_name
var player_shooting_speed:float=2 setget _set_player_shooting_speed
var bullet_speed:int=100

var mouse_y_position:float

var bullet_preload = preload("res://core/Bullet/Bullet.tscn")
var _has_vampire_powerup:bool=false
func _process(delta):
	_player_movement()
	get_parent().get_node("Control/Label_PlayerHealth").text = "HEALTH: "+String(player_health)
	if player_health<=0:
			self.queue_free()
			
func _ready():
	get_node("Timer").start()
	
func _init():
	self.position.x = 50

func _player_movement():
	mouse_y_position=get_viewport().get_mouse_position().y
	self.position.y = mouse_y_position
	
func _player_shoot():
	var bullet_shot = bullet_preload.instance()
	bullet_shot.transform = self.transform
	bullet_shot.bullet_speed =bullet_speed
	if _has_vampire_powerup:
		bullet_shot.is_vampire=true
	self.add_child(bullet_shot)
	
func _set_player_speed(var name:float):
	player_speed = name
func _set_player_health(var health:int):
	player_health = health
func _set_player_attack(var attack:int):
	player_attack = attack
func _set_player_name(var name:String):
	player_name = name
func _set_player_shooting_speed(var shooting_speed:float):
	player_shooting_speed = shooting_speed
func _add_player_health(var i:int):
	self.player_health+=i
	
func _on_Timer_timeout():
	_player_shoot()
	get_node("Timer").start(player_shooting_speed)




func _on_Player_body_entered(body):
	if body.has_method("_is_powerup"):
		body._get_powerup()
		
	if body.has_method("_is_enemy"):
		player_health -= body._do_damage()
		body.free()
		
