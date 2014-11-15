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

def format_tens(number)
    closest = find_closest_exceptional(number)
    difference = number - closest
    "#{EXCEPTIONAL_NUMBERS[closest]} #{EXCEPTIONAL_NUMBERS[difference]}".strip
end

def format_hundreds(number)
  hundreds = number/100
  tens = number - (hundreds * 100)
  return "#{EXCEPTIONAL_NUMBERS[hundreds]} hundred" if tens == 0
  "#{EXCEPTIONAL_NUMBERS[hundreds]} hundred and #{format_tens(tens)}"
end

def number_filter(number)
  if (number >= 100) && (number <= 999)
    return format_hundreds(number)
  else 
    return format_tens(number)
  end
end
  
def format_thousands(number)
  thousands = number/1000
  difference = number - (thousands * 1000)
  return "#{number_filter(thousands)} thousand" if difference == 0
  "#{number_filter(thousands)} thousand, #{number_filter(difference)}"
end


def returns_number_in_words(number)
  if number == 1000000 
    return "one million" 
  elsif number > 999
    return format_thousands(number)
  else number_filter(number)
  end
end

(1..1000000).each {|num| puts returns_number_in_words(num) }
