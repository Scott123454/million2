require 'million2.rb'

describe 'words one to a million' do

	it 'should print "one" for one' do
		expect(returns_number_in_words(1)).to eq 'one'
	end

	it 'returns "two" for 2' do
      expect(returns_number_in_words(2)).to eq 'two'
    end

    it 'returns "twenty one" for 21' do
      expect(returns_number_in_words(21)).to eq 'twenty one'
    end


end