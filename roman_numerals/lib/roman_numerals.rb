class NumeralTranslator
  attr_accessor :arabic_input

  ROMAN_NUMERALS_TRANSLATIONS = { 1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I' }.freeze
  ROMAN_EXCEPTIONS_TRANSLATIONS = { 'DCCCC' => 'CM', 'CCCC' => 'CD', 'LXXXX' => 'XC', 'XXXX' => 'XL', 'VIIII' => 'IX',
                                    'IIII' => 'IV' }.freeze

  def initialize(arabic_input)
    @arabic_input = arabic_input
    @roman_number = ''
  end

  def translate
    result = ''
    ROMAN_NUMERALS_TRANSLATIONS.each { |_number, letter| result << extract_all_possible(letter) }
    convert_exceptions(result)
  end

  private

  def convert_exceptions(roman_digit)
    ROMAN_EXCEPTIONS_TRANSLATIONS.each { |k, v| roman_digit.gsub!(k, v) }
    roman_digit
  end

  def extract_all_possible(letter)
    letters_count = amount_of_contained_letters(letter)
    @arabic_input -= letters_count * arabic_equivalent(letter)
    letter * letters_count
  end

  def amount_of_contained_letters(letter)
    (@arabic_input / arabic_equivalent(letter)).to_i
  end

  def arabic_equivalent(letter)
    return unless ROMAN_NUMERALS_TRANSLATIONS.value?(letter)
    ROMAN_NUMERALS_TRANSLATIONS.find { |_a_num, r_digit| r_digit == letter }.first
  end
end
