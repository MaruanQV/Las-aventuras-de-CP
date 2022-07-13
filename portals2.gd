extends Area2D
export (String) var escena
func _on_Area2D_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://Mapa de Jungla.tscn")


func _on_portals2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://Mapa de Jungla.tscn")
