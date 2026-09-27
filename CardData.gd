extends Resource
class_name CardData

@export var suit: Global.Suit
@export var rank: Global.Rank

func _init(s: Global.Suit, r: Global.Rank) -> void:
	suit = s
	rank = r
