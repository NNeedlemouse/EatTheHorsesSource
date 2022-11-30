extends Control

func _ready():
	$VBoxContainer/Start.grab_focus()
	


func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")
	print('Changin scene!')


func _on_Quit_pressed():
	get_tree().quit()
	print('Quitting..')


func _on_Options_pressed():
	get_tree().change_scene("res://Scenes/Options.tscn")
