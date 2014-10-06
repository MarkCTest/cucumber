Given(/^a certain amount of text$/) do
  @text = "This is text in the essay"
end

When(/^I count the words$/) do
  @wc = WordCount.new(@text)
end

Then(/^the result should be the total word count of the essay$/) do
  @wc.result.should == 6
end