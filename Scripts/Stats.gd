extends Node

export(int) var health setget set_health
export(int) var max_health = 1

signal no_health

func _ready():
	health = max_health
	
func set_health(value):
	health = value
	if health <= 0:
		emit_signal("no_health")
