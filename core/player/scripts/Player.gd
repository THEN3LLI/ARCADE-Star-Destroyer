extends Area2D

var player_speed:float=10 setget _set_player_speed
var player_health:int=100 setget _set_player_health
var player_attack:int=1 setget _set_player_attack
var player_name:String="" setget _set_player_name
var player_shooting_speed:float=2 setget _set_player_shooting_speed
var bullet_speed:int=100
var mouse_y_position:float

var bullet_preload = preload("res://core/Bullet/Bullet.tscn")

func _process(delta):
	_player_movement()
	
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
	self.add_child(bullet_shot)
	
func _set_player_speed(var name:float):
	player_speed = name
func _set_player_health(var name:int):
	player_health = name
func _set_player_attack(var name:int):
	player_attack = name
func _set_player_name(var name:String):
	player_name = name
func _set_player_shooting_speed(var shooting_speed:float):
	player_shooting_speed = shooting_speed

func _on_Timer_timeout():
	_player_shoot()
	get_node("Timer").start(player_shooting_speed)




func _on_Player_body_entered(body):
	if body.has_method("_is_powerup"):
		body._get_powerup()
	if body.has_method("_is_enemy"):
		player_health -= body._do_damage()
		get_parent().get_node("Control/Label_PlayerHealth").text = "HEALTH: "+String(player_health)
		body.free()
		if player_health<=0:
			self.queue_free()
