extends CharacterBody2D

var move_dir = Vector2()
var move_speed = 200

func _physics_process(delta):
	var coll = move_and_collide(move_dir * move_speed * delta)
	if coll:
		if coll.get_collider().name == "Player":
			coll.get_collider().die()
		queue_free()
