extends Node2D
class_name HealthComponent
@export var MAX_HITPOINTS := 10
var hitpoints
signal health_change(new_hitpoints)

# Called when the node enters the scene tree for the first time.
func _ready():
	hitpoints = MAX_HITPOINTS
	
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#calls when healing
func healDamage(heal):
	hitpoints += heal
	#never go over max hitpoints
	if hitpoints > MAX_HITPOINTS:
		hitpoints = MAX_HITPOINTS
	health_change.emit(hitpoints)
	
#Called when taking damage
func takeDamage(Damage):
	hitpoints -= Damage
	health_change.emit(hitpoints)
