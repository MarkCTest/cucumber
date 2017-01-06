@full_regression
Feature: Calculate the VAT to be added for goods or services sold
  
  As a UK business owner providing goods and services to homes
  I want to calculate the correct rate of VAT to charge customers
  In order to balance our VAT accounts for goods and services sold
  
  Background:
     Given the business is in the UK
     And is registered for VAT at the full rate
     And it is the 2015/2016 financial year
 
 @core_regression
  Scenario: The business sells general repair services
     Given the business has sold £5000 of repair services
     When the Standard VAT rate of 20% is applied
     Then the VAT to be charged is shown as £1000
  
  Scenario: The business sells home energy
     Given the business has sold 100KWh of energy
     And each KWh is charged at £0.14 without VAT
     When the Reduced VAT rate of 5% is applied 
     Then the VAT to be charged is show as £147
  
  Scenario Outline: The business sells several types of zero rated goods
     Given the business sells <goods> to home customers
     And the customer pays the full <cost> of the item
     When the Zero VAT rate is applied to the total cost for the <amount> of the goods sold
     Then the VAT to be charged is shown as 0 in all cases
 
     Examples:
     |       goods       | cost | amount |
     | childrens clothes |  15  |    3   |
     | food              |   5  |    7   |
     | cycle helmet      |  30  |    2   |
