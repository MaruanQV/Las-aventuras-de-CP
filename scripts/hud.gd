extends CanvasLayer

func _physics_process(delta):
	$coinsnumber.text = str(Singletonpt.coins)
