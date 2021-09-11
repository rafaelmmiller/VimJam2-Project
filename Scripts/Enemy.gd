extends KinematicBody2D

onready var stats = $Stats

func _on_HurtBox_area_entered(area):
	stats.health -= area.damage

func _on_Stats_no_health():
	die()
	
func die():
	queue_free()
