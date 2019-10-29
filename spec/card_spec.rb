# frozen_string_literal: true

require 'card'

describe Card do
  context 'when a valid card is initialized' do
    context 'when the card is an Ace of Clubs' do
      subject { described_class.new('A', 'C') }
      describe '#to_s' do
        it 'returns "A of C"' do
          expect(subject.to_s).to eq 'A of C'
        end
      end

      describe '#value' do
        it 'returns 14' do
          expect(subject.value).to eq 14
        end
      end

      describe '#rank' do
        it 'returns "A"' do
          expect(subject.rank).to eq 'A'
        end
      end

      describe '#suit' do
        it 'returns "C"' do
          expect(subject.suit).to eq 'C'
        end
      end
    end

    context 'when the card is a 2 of Hearts' do
      subject { described_class.new('2', 'H') }
      describe '#to_s' do
        it 'returns "2 of H"' do
          expect(subject.to_s).to eq '2 of H'
        end
      end

      describe '#value' do
        it 'returns 2' do
          expect(subject.value).to eq 2
        end
      end

      describe '#rank' do
        it 'returns "2"' do
          expect(subject.rank).to eq '2'
        end
      end

      describe '#suit' do
        it 'returns "H"' do
          expect(subject.suit).to eq 'H'
        end
      end
    end
  end
end

describe Card do
  context 'when an invalid argument is passed' do
    it 'raises an ArgumentError when a non-String argument is passed' do
      expect { described_class.new(1, 'C') }
        .to raise_error(ArgumentError, 'arguments must be of Class: String')
    end

    it 'raises an ArgumentError when an invalid rank is passed' do
      expect { described_class.new('X', 'C') }
        .to raise_error(ArgumentError, /\w+ is not a valid rank/)
    end

    it 'raises an ArgumentError when an invalid suit is passed' do
      expect { described_class.new('5', 'Y') }
        .to raise_error(ArgumentError, /\w+ is not a valid suit/)
    end
  end
end
