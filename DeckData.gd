extends Resource
class_name DeckData

@export var cards: Array[CardData]

static func get_52_deck() -> DeckData:
	var new_deck = DeckData.new()
	for s in Global.Suit.values():
		for r in Global.Rank.values():
			if r == Global.Rank.JOKER:
				continue
			new_deck.cards.append(CardData.new(s, r))
	return new_deck
