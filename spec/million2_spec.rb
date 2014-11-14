require 'million2.rb'

describe 'words one to a million' do

	it 'should print "one" for one' do
		expect(returns_number_in_words(1)).to eq 'one'
	end

end