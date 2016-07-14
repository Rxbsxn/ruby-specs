require 'roman_numerals'
require 'pry'

describe NumeralTranslator do
  let(:roman_numerals) { NumeralTranslator.new(input) }

  describe 'constant' do
    it 'returns correct roman numerals translations' do
      expect(NumeralTranslator::ROMAN_NUMERALS_TRANSLATIONS).to eql(1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C',
                                                                    500 => 'D', 1000 => 'M')
    end
  end

  describe '#translate' do
    context 'when number end with "9"' do
      let(:input) { 159 }

      it 'returns corrrect roman number' do
        expect(roman_numerals.translate).to eql 'CLIX'
      end
    end

    context 'when number contains "990"' do
      let(:input) { 3992 }

      it 'returns corret roman number' do
        expect(roman_numerals.translate).to eql 'MMMCMXCII'
      end
    end

    context 'when number contains "444"' do
      let(:input) { 444 }

      it 'returns correct roman number' do
        expect(roman_numerals.translate).to eql 'CDXLIV'
      end
    end
  end
end
