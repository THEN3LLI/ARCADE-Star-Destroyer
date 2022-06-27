extends Node2D

var enemy_octopus_preload = preload("res://core/enemy/EnemyOctopus.tscn")
var difficulty_multiplier:float = 5
var difficulty_actual:int=1
var array_powerups:Array
var power_up_bullet_speed = preload("res://core/powerups/bullet speed/Powerup_bulletspeed.tscn")
var power_up_bullet_shooting_speed = preload("res://core/powerups/bullet_shooting_speed/Powerup_bulletshootingspeed.tscn")

func _process(delta):
	self.get_node("Control/Label_DifficultyIncrease").text = "Difficulty"+" "+String(difficulty_actual)+" "+String(get_node("TimerDifficulty").time_left)
func _spawn_enemy():
	randomize()
	var enemy_octopus =  enemy_octopus_preload.instance()
	enemy_octopus.position.x = get_viewport().size.x+30
	enemy_octopus.position.y = rand_range(50,get_viewport().size.y-50)
	self.add_child(enemy_octopus)
func _ready():
	_init()
	
func _init():
	_init_powerups()
	
func _init_powerups():
	array_powerups.append(power_up_bullet_speed)
	array_powerups.append(power_up_bullet_shooting_speed)
	
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
