require_relative ".././lib/lowest_unique_number"
RSpec.describe LowestUniqueNumber do
  describe '.result' do
    context 'five players in game, one winner' do
      it 'returns winner index' do
        collection = [1, 2, 3, 4, 5]

        expect(LowestUniqueNumber.new(collection).result).to eq 1
      end
    end

    context 'six players in game, no winner' do
      it 'returns winner' do
        collection = [1, 2, 2, 3, 1, 3]

        expect(LowestUniqueNumber.new(collection).result).to eq 0
      end
    end

    context 'CodeEval sample input' do
      it 'returns zero' do
        collection = [9, 2, 9, 9, 1, 8, 8, 8, 2, 1, 1]

        expect(LowestUniqueNumber.new(collection).result).to eq 0
      end
    end

    context 'CodeEval second sample input' do
      it 'returns 5 as index of 6' do
        collection = [3, 3, 9, 1, 6, 5, 8, 1, 5, 3]

        expect(LowestUniqueNumber.new(collection).result).to eq 5
      end
    end

  end
end
