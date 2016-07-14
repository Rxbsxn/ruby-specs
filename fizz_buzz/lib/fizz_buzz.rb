class FizzBuzz
  def self.fizz_buzz(input)
    return 'FB' if input % 15 == 0
    return 'B' if input % 5 == 0
    return 'F' if input % 3 == 0
    input
  end

  (1..100).map do |i|
    puts fizz_buzz(i)
  end
end
