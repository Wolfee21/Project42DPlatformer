extends KinematicBody2D

var velocity = Vector2()
var direction = -1

func _ready():
	pass


func _physics_process(_delta):
	velocity.y += 20
	
	velocity.x = 100*direction
	
	move_and_slide(velocity)
	
	if direction == -1:
		$EnemySprite.flip_h = true
	elif direction == 1:
		$EnemySprite.flip_h = false


func _on_Timer_timeout():
	if direction == -1:
		direction = 1
	else:
		direction = -1


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene("res://Levels/Level1.tscn")
