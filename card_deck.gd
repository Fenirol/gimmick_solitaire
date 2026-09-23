class_name CardDeck
extends Resource

const SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
const RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

# Ресурс в виде массива карт
@export var cards: Array[Dictionary] = []

func _init() -> void:
	_generate_standard_deck()

func _generate_standard_deck() -> void:
	cards.clear()
	for suit in SUITS:
		for rank in RANKS:
			var card: Dictionary = {
				"suit": suit,
				"rank": rank
			}
			cards.append(card)

# Функция, которая создает копию массива карт и перемешивает её
func get_shuffled_copy() -> Array[Dictionary]:
	# Вызываем duplicate(true) для создания глубокой копии (deep copy) массива и словарей внутри
	var shuffled_cards: Array[Dictionary] = cards.duplicate(true)

	# Перемешиваем скопированный массив случайным образом (встроенный метод shuffle в Godot)
	shuffled_cards.shuffle()

	return shuffled_cards
