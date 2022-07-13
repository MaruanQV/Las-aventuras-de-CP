extends Label

func _process(delta):
	$puntuacion.text = "monedas: " + str(Global_Var.puntos) 
