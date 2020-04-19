extends Area2D

class_name Feeler

func _ready():
	connect("body_entered",self,"reset_disabled")

var colliding setget , isColliding
var disabled := false

func disable(only_when_not_colliding=false):
	if(only_when_not_colliding && colliding): return
	disabled=true
	print("Disabled")
	
func reset_disabled(body):
	disabled=false
	print("Enabled")

func isColliding():
	return !disabled && !get_overlapping_bodies().empty()
