extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Lvl1/lvl1.tscn")


func _on_controles_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Controls/control.tscn")


func _on_creditos_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Credits/credits.tscn")


func _on_sair_pressed() -> void:
	get_tree().quit()
