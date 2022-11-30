extends Node

var Cow 

signal Cow_changed(Cow)

func update_cow(var delta):
	Cow=delta
