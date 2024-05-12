extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	spred_hand()
	pass # Replace with function body.

func spred_hand():
	
	var childeren = get_children()
	var hand_size = 250 * childeren.size()
	var handspread = hand_size / childeren.size()
	var handposition = (-hand_size + handspread) /2
	print(handspread)
	for i in childeren:
		i.position.x = handposition
		i.position.y = 0
		handposition += handspread
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
