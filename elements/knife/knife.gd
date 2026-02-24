extends CharacterBody2D

# Состояние ножа: летит или не летит
var is_flying := false

# Скорость полета ножа
var speed := 4500.0 


# Менять каждый кадр если он находится в состоянии полета
func _physics_process(delta: float) -> void:
	if is_flying:
		var collision = move_and_collide(Vector2.UP * speed * delta)

# Метод throw, который переводит в состояние полета
func throw():
	is_flying = true
