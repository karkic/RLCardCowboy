extends Area2D
class_name HitboxComponent
@export var health_component: HealthComponent

func damage(attack):
	print(attack)
	if health_component:
		health_component.takeDamage(attack)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
