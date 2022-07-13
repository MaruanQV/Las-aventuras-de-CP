extends Area2D



func _on_coin_body_entered(body):
	if body.name == "player":
		Singletonpt.coins += 1
		print(Singletonpt.coins)
		queue_free()
