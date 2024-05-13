extends Node2D
@export var hitbox_xomponent : HitboxComponent
@export var health_component : HealthComponent

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_health_component_health_change(new_hitpoints):
	#print(new_hitpoints)
	if new_hitpoints <= 0:
		queue_free()
