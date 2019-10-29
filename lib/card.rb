# frozen_string_literal: true

RANK_VALUES = {
  'A' => 14,
  'K' => 13,
  'Q' => 12,
  'J' => 11,
  '10' => 10,
  '9' => 9,
  '8' => 8,
  '7' => 7,
  '6' => 6,
  '5' => 5,
  '4' => 4,
  '3' => 3,
  '2' => 2
}.freeze

SUITS = %w[C D H S].freeze

class Card
  attr_reader :rank, :suit, :value

  def initialize(rank, suit)
    unless [rank, suit].all? { |e| e.is_a?(String) }
      raise ArgumentError, 'arguments must be of Class: String'
    end

    unless RANK_VALUES.key?(rank)
      raise ArgumentError, "#{rank} is not a valid rank"
    end

    unless SUITS.include?(suit)
      raise ArgumentError, "#{suit} is not a valid suit"
    end

    @rank = rank
    @suit = suit
    @value = RANK_VALUES[rank]
  end

  def to_s
    "#{rank} of #{suit}"
  end
end
