require 'million2.rb'

describe 'Write one to a million in words' do

  context 'returns_number_in_words' do
    
    it 'returns "one" for 1' do
      expect(returns_number_in_words(1)).to eq 'one'
    end

    it 'returns "two" for 2' do
      expect(returns_number_in_words(2)).to eq 'two'
    end

    it 'returns "twenty one" for 21' do
      expect(returns_number_in_words(21)).to eq 'twenty one'
    end

    it 'returns "five hundred" for 500' do
      expect(returns_number_in_words(500)).to eq 'five hundred'
    end

    it 'returns "one hundred and one" for 101' do
      expect(returns_number_in_words(101)).to eq 'one hundred and one'
    end

    it 'returns "nine hundred and ninety nine" for 999' do
      expect(returns_number_in_words(999)).to eq 'nine hundred and ninety nine'
    end

  end

  context 'one to ninety nine number calculator' do

    it 'finds that the highest exceptional number less than 21 is 20' do
      expect(find_closest_exceptional(21)).to eq 20
    end
    
  end

  context 'compound number calculator' do
    
    it 'format_ones(1) returns 1' do
      expect(returns_number_in_words(1)).to eq 'one'
    end
   
    it 'format_tens(30) returns thirty' do
      expect(format_tens(30)).to eq 'thirty'
    end

    it 'format_tens(51) returns fifty one' do
      expect(format_tens(51)).to eq 'fifty one'
    end

    it 'format_hundreds(100) returns "one hundred"' do
      expect(format_hundreds(100)).to eq 'one hundred'
    end

    it 'format_thousands(1000) returns "one thousand"' do
      expect(format_thousands(1000)).to eq 'one thousand'
    end

    it 'format_thousands(2000) returns "two thousand"' do
      expect(format_thousands(2000)).to eq 'two thousand'
    end

    it 'format_thousands(1999) returns "one thousand nine hundred and ninety nine"' do
      expect(format_thousands(1999)).to eq 'one thousand, nine hundred and ninety nine'
    end

    it 'format_thousands(101000) returns "one hundred and one thousand"' do
    expect(format_thousands(101000)).to eq 'one hundred and one thousand'
    end

    it 'format_thousands(999999) returns "nine hundred and ninety nine thousand, nine hundred and ninety nine"' do
      expect(format_thousands(999999)).to eq "nine hundred and ninety nine thousand, nine hundred and ninety nine"
    end

    it 'returns_number_in_words(1000000) to return "one million"' do
      expect(returns_number_in_words(1000000)).to eq "one million"
    end

    it 'returns_number_in_words(500000)).to eq "five hundred thousand"' do
      expect(returns_number_in_words(500000)).to eq 'five hundred thousand'
    end

  end
end