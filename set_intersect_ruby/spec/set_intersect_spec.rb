require_relative ".././lib/set_intersect"
RSpec.describe SetIntersect do
  describe '#intersect' do
    context 'when single element is common in arrays' do
      it 'returns element' do
        line = '1,2,3,4;4,5,6'

        expect(SetIntersect.new(line).intersect).to eq "4"
      end
    end

    context 'when multiple elements are common in arrays' do
      it 'returns elements after comma' do
        line = '7,8,9;8,9,10,11,12'
        expect(SetIntersect.new(line).intersect).to eq "8,9"
      end
    end

    context 'when none element is common' do
      it 'returns empty string' do
        line = '20,21,22;45,46,47'

        expect(SetIntersect.new(line).intersect).to eq ""
      end
    end
  end
end
