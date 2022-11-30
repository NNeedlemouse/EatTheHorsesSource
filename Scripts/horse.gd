extends Area2D

func _on_Area2D_body_entered(body):
	if body.has_method("EatCow"):
		body.EatCow()
		queue_free()
		Global1.update_cow(1)
