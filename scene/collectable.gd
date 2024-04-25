extends Area2D

@onready var game_manager = %GameManager
@onready var collected_sound = $AudioStreamPlayer2D
@onready var amimatedSprite = $AnimatedSprite2D

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		collected_sound.play()
		game_manager.add_point()
		collected()
		

func collected():
	amimatedSprite.animation = "oncollect"
	await get_tree().create_timer(0.2).timeout
	queue_free()
