extends Area2D

export (String) var escena
func _on_Area2D_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://MapaDesert.tscn")


func _on_portal1_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://MapaDesert.tscn")
