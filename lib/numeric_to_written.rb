class Fixnum

  define_method(:numeric_to_written) do

    ones = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }

    tens = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 =>"seventy", 80 =>"eighty", 90 =>"ninety"}





    if self <= 10
      number = ones.fetch(self)
    elsif self <= 20
      number = tens.fetch(self)
    else
      second_digit = (self / 10).floor * 10
      first_digit = self % 10
      number = tens.fetch(second_digit).concat(" " + ones.fetch(first_digit))
    end

    number

  end
end
