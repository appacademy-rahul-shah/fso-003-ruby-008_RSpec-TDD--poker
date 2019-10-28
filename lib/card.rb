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

class Card
  attr_reader :rank, :suit, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = RANK_VALUES[rank]
  end

  def to_s
    "#{rank} of #{suit}"
  end
end
