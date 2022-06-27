extends Node2D

var enemy_octopus_preload = preload("res://core/enemy/EnemyOctopus.tscn")
var difficulty_multiplier:float = 5
var difficulty_actual:int=1
#Power ups
var array_powerups:Array
var power_up_bullet_speed = preload("res://core/powerups/bullet speed/Powerup_bulletspeed.tscn")
var power_up_bullet_shooting_speed = preload("res://core/powerups/bullet_shooting_speed/Powerup_bulletshootingspeed.tscn")
#Enemies
var array_enemies:Array
var enemy_octopus = preload("res://core/enemy/EnemyOctopus.tscn")
var enemy_squid = preload("res://core/enemy/Squid/EnemySquid.tscn")
func _ready():
	_init()
	
func _init():
	_init_powerups()
	_init_enemies()
func _init_powerups():
	array_powerups.append(power_up_bullet_speed)
	array_powerups.append(power_up_bullet_shooting_speed)
func _init_enemies():
	var how_many_octopus = 5
	var how_many_squid = 3
	while(how_many_octopus>0):
		array_enemies.append(enemy_octopus)	
		how_many_octopus-=1
	while(how_many_squid>0):	
		array_enemies.append(enemy_squid)
		how_many_squid -=1
		
func _process(delta):
	self.get_node("Control/Label_DifficultyIncrease").text = "Difficulty"+" "+String(difficulty_actual)+" "+String(get_node("TimerDifficulty").time_left)

func _spawn_enemy():
	randomize()
	var rand_enemy_index = int(rand_range(0,8))
	var enemy_tospawn =  array_enemies[rand_enemy_index].instance()
	enemy_tospawn.position.x = get_viewport().size.x+30
	enemy_tospawn.position.y = rand_range(50,get_viewport().size.y-50)
	self.add_child(enemy_tospawn)
	print(enemy_tospawn)
func _spawn_powerup():
	randomize()
	var rand_powerup = int(rand_range(0,1.4))
	print(rand_powerup)
	print(array_powerups[0])
	print(array_powerups[1])
	var power_up = array_powerups[rand_powerup].instance()
	randomize()
	power_up.position.x = get_viewport().size.x+30
	power_up.position.y = rand_range(50,get_viewport().size.y-50)
	self.add_child(power_up)

func _on_TimerDifficulty_timeout():
	difficulty_multiplier-=0.5
	difficulty_actual+=1
func _on_TimerPowerups_timeout():
	_spawn_powerup()



func _on_TimerSpawnEnemy_timeout():
	_spawn_enemy()
	get_node("TimerSpawnEnemy").start(difficulty_multiplier)
