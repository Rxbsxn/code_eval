require_relative ".././lib/sum_of_digits"
RSpec.describe SumOfDigits do
  describe '#sum' do
    it "sums given number's digits" do
      expect(SumOfDigits.new('12').sum).to eq 3
    end
  end
end
