extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Quit_pressed():
	get_tree().quit()

func _on_New_Game_pressed():
	get_tree().change_scene("res://World.tscn")
