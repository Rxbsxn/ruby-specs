require 'fizz_buzz'
describe FizzBuzz do
  describe '.fizz_buzz' do
    context 'divide by 3' do
      it 'should return F' do
        expect(FizzBuzz.fizz_buzz(3)).to eql('F')
      end
    end
  end

  describe '.fizz_buzz' do
    context 'divide by 5' do
      it 'should return B' do
        expect(FizzBuzz.fizz_buzz(5)).to eql('B')
      end
    end
  end

  describe '.fizz_buzz' do
    context 'divide by 15' do
      it 'should return FB' do
        expect(FizzBuzz.fizz_buzz(15)).to eql('FB')
      end
    end
  end
end
