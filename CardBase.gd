extends Node2D
class_name Card
var selected = false
@export var card_component : CardComponent
var target
var selectedObject = null
# var parent = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selected:
		followMouse()

func followMouse():
	position = get_global_mouse_position()
	


func _on_mouse_colision_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			selected = true
		else:
			#damage target
			if target is HitboxComponent:
				target.damage(card_component.damage)
				queue_free()
			selected = false
#card targets enemey
func _on_targeting_componate_area_entered(area):
	if area is HitboxComponent:
		target = area
