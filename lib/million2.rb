EXCEPTIONAL_NUMBERS={1 => 'one',
                     2 => 'two',
                     3 => 'three',
                     4 => 'four',
                     5 => 'five',
                     6 => 'six',
                     7 => 'seven',
                     8 => 'eight',
                     9 => 'nine',
                     10 => 'ten',
                     11 => 'eleven',
                     12 => 'twelve',
                     13 => 'thirteen',
                     14 => 'fourteen',
                     15 => 'fifteen',
                     16 => 'sixteen',
                     17 => 'seventeen',
                     18 => 'eighteen',
                     19 => 'nineteen',
                     20 => 'twenty',
                     30 => 'thirty',
                     40 => 'fourty',
                     50 => 'fifty',
                     60 => 'sixty',
                     70 => 'seventy',
                     80 => 'eighty',
                     90 => 'ninety'
                     }

def find_closest_exceptional(number)
  EXCEPTIONAL_NUMBERS.to_a.reverse.to_h.find {|fig, word|
      number >= fig}[0]
end

def number_filter(number)
  if (number >= 100) && (number <= 999)
    return format_hundreds(number)
  else 
    return format_tens(number)
  end
end


def format_tens(number)
    closest = find_closest_exceptional(number)
    difference = number - closest
    "#{EXCEPTIONAL_NUMBERS[closest]} #{EXCEPTIONAL_NUMBERS[difference]}".strip
end

def returns_number_in_words(number)
  if number == 1000000 
    return "one million" 
  elsif number > 999
    return format_thousands(number)
  else number_filter(number)
  end
end

puts returns_number_in_words(1)
