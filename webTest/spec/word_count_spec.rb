require_relative '../features/word_count.rb'
require 'rspec'

describe WordCount do
	context "counting words" do
		it "can count three words" do
			wc = WordCount.new("there should be six words here")
			wc.result.should == 6
		end
	end
end