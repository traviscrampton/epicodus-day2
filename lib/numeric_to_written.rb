class Fixnum

  define_method(:numeric_to_written) do

    zeros = {0 => "zero"}
    ones = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }

    tens = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 =>"seventy", 80 =>"eighty", 90 =>"ninety"}

    if self == 0
      number = zeros.fetch(self)
    elsif self <= 9
      number = ones.fetch(self)
    elsif self <= 20
      number = tens.fetch(self)
    elsif self < 100
      second_digit = (self / 10).floor * 10
      first_digit = self % 10
      number = tens.fetch(second_digit).concat(" " + ones.fetch(first_digit))
    elsif self < 110 && self > 100
      third_digit = (self/100).floor
      first_digit = (self%100) % 10
      number = ones.fetch(third_digit) + " hundred and " + ones.fetch(first_digit)
    elsif (self < 120 && self > 110) || self == 130 || self == 140 || self == 150 || self == 160 || self == 170 || self == 180 || self == 190
      third_digit = (self/100).floor
      second_digit = self%100
      number = ones.fetch(third_digit) + " hundred and " + tens.fetch(second_digit)
    elsif self < 1000
      third_digit = (self/100).floor
      second_digit = ((self%100)/10).floor*10
      first_digit = (self%100)%10
      number = ones.fetch(third_digit) + " hundred and " + tens.fetch(second_digit) + " " + ones.fetch(first_digit)
    else
      forth_digit = ones.fetch((self/1000).floor) + " thousand "
      third_digit = ones.fetch((((self % 1000)/100).floor)) + " hundred"
      second_digit = " and " + tens.fetch((((self % 1000) % 100) / 10).floor * 10) + " "
      first_digit = ones.fetch(((self % 1000) % 100) % 10)
      number = forth_digit + third_digit + second_digit + first_digit
    end

    number

  end
end
