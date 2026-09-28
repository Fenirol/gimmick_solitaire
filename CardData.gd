extends Resource
class_name CardData

@export var suit: Global.Suit = Global.Suit.SPADES
@export var rank: Global.Rank = Global.Rank.ACE

func _init(s: Global.Suit = Global.Suit.SPADES, r: Global.Rank = Global.Rank.ACE) -> void:
	suit = s
	rank = r
