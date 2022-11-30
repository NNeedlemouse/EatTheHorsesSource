extends Label

var score = 0

func _process(delta: float) -> void:
	$".".text="Horse eaten: "+ str(Global1.Cow)
