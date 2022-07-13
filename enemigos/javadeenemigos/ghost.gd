extends KinematicBody2D

var velocity = Vector2(0,0)
var goForeward = true

func _physics_process(delta):
	move_and_slide(velocity * delta)
	
	if (get_slide_collision(get_slide_count()-1) != null):
		var obj_col = get_slide_collision(get_slide_count()-1).collider
		if(obj_col.is_in_group("player")):
			pass
	
	if is_on_wall():
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		goForeward = not goForeward
	
	if goForeward == true:
		velocity.x = 50
	else:
		velocity.x = -50
		
	velocity =  move_and_slide(velocity, Vector2.UP)
	


func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		get_tree().reloed_current_scene()
