class Fixnum

  define_method(:numeric_to_written) do

    num_hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }

    num_hash.fetch(self)

  end
end
