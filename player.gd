extends KinematicBody2D

var velocidad = Vector2(0,0)
var gravedad = 7.50
var masa = 4

func _physics_process(delta):
	if Input.is_action_pressed("mov_derecha"):
		velocidad.x = +300
		$Animar.play("caminar")
		$Animar.flip_h= false
	if Input.is_action_pressed("mov_izquierda"):
		velocidad.x = -300
		$Animar.play("caminar")
		$Animar.flip_h= true
	if Input.is_action_pressed("saltar") and is_on_floor():
		velocidad.y = -800
		
	if not is_on_floor():
		$Animar.play("saltar")
		
	velocidad.y = velocidad.y + masa*gravedad
	velocidad = move_and_slide(velocidad, Vector2.UP)
	velocidad.x = lerp(velocidad.x,0,0.30)
func _on_Area2D_body_entered(body):
	if body.name == 'player':
		get_tree().change_scene("res://MapaDesert.tscn")

	if (get_slide_collision(get_slide_count()-1) != null):
		var obj_col = get_slide_collision(get_slide_count()-1).collider
		if(obj_col.is_in_group("ghost")):
			queue_free()
