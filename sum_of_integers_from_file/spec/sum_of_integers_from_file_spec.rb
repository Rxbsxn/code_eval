require_relative ".././lib/sum_of_integers_from_file"
RSpec.describe SumOfIntegersFromFile do
  describe '#sum' do
    it "sums given number's digits" do
      collection = [1, 2]

      expect(SumOfIntegersFromFile.new(collection).array_sum).to eq 3
    end
  end
end
