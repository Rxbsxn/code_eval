require_relative ".././lib/lowest_unique_number"
RSpec.describe LowestUniqueNumber do
  describe '.result' do
    context 'five players in game, one winner' do
      it 'returns winner' do
        collection = [1, 2, 3, 4, 5]

        expect(LowestUniqueNumber.result(collection).to eq 1)
      end
    end

    context 'six players in game, no winner' do
      it 'returns winner' do
        collection = [1, 2, 2, 3, 1, 3]

        expect(LowestUniqueNumber.result(collection).to eq 0)
      end
    end
  end
end
