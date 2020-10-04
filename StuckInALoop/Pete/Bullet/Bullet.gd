extends Area2D

export var lifespan = 2
export var speed = 2000
export var damage = 2
var velocity setget set_vel, get_vel

var time_alive = 0
var angle = 0

func set_vel(value):
	angle = Vector2.ZERO.angle_to_point(value)
	velocity = value.normalized()
	rotation = angle
	
func get_vel():
	return velocity

func _physics_process(delta):
	position += speed*delta*velocity
	time_alive += delta
	if (time_alive > lifespan):
		queue_free()
		

func _on_Bullet_body_entered(body):
	body.emit_signal("on_damage", damage, velocity.normalized()*100)
