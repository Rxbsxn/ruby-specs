require 'roman_numerals'

describe NumeralTranslator do
  let(:roman_numerals) { NumeralTranslator.new }

  describe 'constant' do
    pending 'returns correct roman numerals translations' do
      expect(NumeralTranslator::ROMAN_NUMERALS_TRANSLAIONS).to eql(1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C',
                                                                   500 => 'D', 1000 => 'M')
    end
  end

  describe '#translate' do
    context 'when number end with "9"' do
      pending 'returns corrrect roman number' do
        expect(roman_numerals.translate(159)).to eql 'CLIX'
      end
    end

    context 'when number contains "990"' do
      pending 'returns corret roman number' do
        expect(roman_numerals.translate(3992)).to eql 'MMMCMXCII'
      end
    end

    context 'when number contains "444"' do
      pending 'returns correct roman number' do
        expect(roman_numerals.translate(444)).to eql 'CDXLIV'
      end
    end
  end
end
