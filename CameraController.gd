extends Camera2D

onready var player = get_node("/root/Level1/Player")

func _process(_delta):
	position.x = player.position.x
