@full_regression
Feature: Deduct the amount of VAT paid by the business for goods and services
  
  As a UK business owner purchasing goods and services from other businesses
  I want to calculate the correct rate of VAT to deduct from my VAT accounts
  In order to balance our VAT accounts for goods and services bought
  
  Background:
     Given the business is in the UK
     And is registered for VAT at the full rate
     And it is the 2015/2016 financial year
  
  @core_regression
  Scenario: The business buys IT consulting services 
     Given the business has purchased £5000 of IT consulting services
     When the Standard rate of VAT at 20% charged to us is deducted
     Then the VAT that was paid should be shown as £833.33
  
  Scenario: The business buys a Gas-fired Boiler
     Given the business has purchased a gas-fired boiler for £1100
     When the Reduced VAT rate of 5% charged to us is deducted
     Then the VAT that was paid should be shown as £71.43

  Scenario Outline: The business buys several types of zero rated goods and services
     Given the business buys <good_service> from its suppliers
     And the business pays the full <cost> of the item
     When the Zero VAT rate is applied to the total cost for the <amount_bought> of the item
     Then the VAT that was charged to us is shown as 0 in all cases
 
     Examples:
     |    good_service   |  cost   | amount_bought |
     |  protective boots |     55  |       10      |
     |     insurance     |   1100  |        2      |
     | aircraft repair   |  12000  |        1      |
