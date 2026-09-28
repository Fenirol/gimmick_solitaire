extends Resource
class_name DeckData

const Suit = Global.Suit
const Rank = Global.Rank
const Difficulty = Global.Difficulty

@export var cards: Array[CardData] = []

static func create_deck(banned_ranks: Array[Rank] = []) -> DeckData:
	var deck = DeckData.new()
	for s in Suit.values():
		for r in Rank.values():
			if r in banned_ranks:
				continue
			deck.cards.append(CardData.new(s, r))
	return deck

static func get_52_deck() -> DeckData:
	return create_deck([Rank.JOKER])

static func get_54_deck() -> DeckData:
	var deck = get_52_deck()
	deck.cards.append(CardData.new(Suit.SPADES, Rank.JOKER))
	deck.cards.append(CardData.new(Suit.HEARTS, Rank.JOKER))
	return deck

static func get_lobo_deck(diff: Difficulty) -> DeckData:
	var banned: Array[Rank] = [Rank.JOKER, Rank.JACK, Rank.QUEEN, Rank.KING]
	
	match diff:
		Difficulty.EASY:
			banned.append_array([Rank.NINE, Rank.TEN])
		Difficulty.NORMAL:
			banned.append(Rank.TEN)
	
	return create_deck(banned)

static func get_jacks_dream_deck() -> DeckData:
	return create_deck([Rank.JOKER, Rank.JACK, Rank.QUEEN, Rank.KING, Rank.TEN, Rank.NINE])
