extends Control


func _ready():
	$HSlider.grab_focus()


func _on_HSlider_value_changed(value):
	if value == 45:
		AudioServer.set_bus_mute(0,true)
	else:
		AudioServer.set_bus_mute(0,false)
	AudioServer.set_bus_volume_db(0,value)


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	
	


func _on_CheckBox_pressed():
	OS.set_window_fullscreen(!OS.window_fullscreen)

