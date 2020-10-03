extends Node

var playing = false
var loops = 0

var player


func GoToMainMenu(node):
	node.get_tree().change_scene("res://Scenes/MainMenu/Main Menu.tscn")

