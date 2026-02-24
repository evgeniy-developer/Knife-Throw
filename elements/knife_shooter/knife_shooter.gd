extends Node2D

var knife_scene := preload("res://elements/knife/knife.tscn")

@onready var knife := $Knife
@onready var timer :=  $Timer

# Создает новый ножи и сохранаяте в переменную knife
func creat_new_knife():
	knife = knife_scene.instantiate()
	add_child(knife)
	
	# Отслеживане играка на экране
func _input(event: InputEvent):
		if event is InputEventScreenTouch and event.is_pressed():
			knife.throw()
