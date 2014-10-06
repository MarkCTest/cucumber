Feature: Count words in a document
	In order to reach the publication standards for an essay
	As the author
	I want to know how many words I've written
	
	Scenario: Get the word count
		Given a certain amount of text
		When I count the words
		Then the result should be the total word count of the essay