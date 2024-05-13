extends Node2D

@export var player_deck : Deck
# Called when the node enters the scene tree for the first time.
func _ready():
	draw_card()
	draw_card()
		
		 # Replace with function body.

func spred_hand():
	#moves and sporeads out cards evenly
	var childeren = get_children()
	if childeren.size() > 0:
		var hand_size = 250 * childeren.size()
		var handspread = hand_size / childeren.size()
		var handposition = (-hand_size + handspread) /2
		#print(handspread)
		for i in childeren:
			i.position.x = handposition
			i.position.y = 0
			handposition += handspread
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
# New card is added to hand
func draw_card():
	var drawing_card = preload("res://scenes/card.tscn").instantiate()
	var drawing_card2 = preload("res://shoot.tscn").instantiate()
	add_child(drawing_card2)
	add_child(drawing_card)
	drawing_card2.No_Target.connect(_on_card_no_target)
	drawing_card2.Card_played.connect(_on_card_played)
	drawing_card.No_Target.connect(_on_card_no_target)
	drawing_card.Card_played.connect(_on_card_played)
	spred_hand()
#return card to hand if no target is selected
func _on_card_no_target():
	spred_hand()
	
func _on_card_played(node: Card):
	await node.tree_exited
	spred_hand()
