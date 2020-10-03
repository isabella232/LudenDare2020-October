extends Node

var playing = false

func GoToMainMenu(node):
	node.get_tree().change_scene("res://Scenes/MainMenu/Main Menu.tscn")
