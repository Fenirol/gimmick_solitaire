extends Node

enum Suit {
	SPADES,
	HEARTS,
	DIAMONDS,
	CLUBS
}
enum Rank {
	ACE = 1,
	TWO = 2,
	THREE = 3,
	FOUR = 4,
	FIVE = 5,
	SIX = 6,
	SEVEN = 7,
	EIGHT = 8,
	NINE = 9,
	TEN = 10,
	JACK = 11,
	QUEEN = 12,
	KING = 13,
	JOKER = -1
}
enum Colors { BLACK, RED }

const SUIT_COLORS = {
	Suit.SPADES: Colors.BLACK,
	Suit.CLUBS: Colors.BLACK,
	Suit.HEARTS: Colors.RED,
	Suit.DIAMONDS: Colors.RED
}
