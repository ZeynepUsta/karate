Feature: Stripe Create User Feature

  Scenario: Create user on Stripe
#    Given def secretKey = "sk_test_51I3fhEHK8Oec1S7CatBZ1Yg7UZEWcyXR2w3xvC2x8hgDSstNj6yUK124mFwGce2VCId4P96cirNfi0XPYsYYgV5T00HWEI16m9"
    And header Authorization = "Bearer " + "sk_test_51I3fhEHK8Oec1S7CatBZ1Yg7UZEWcyXR2w3xvC2x8hgDSstNj6yUK124mFwGce2VCId4P96cirNfi0XPYsYYgV5T00HWEI16m9"
    And url "https://api.stripe.com/v1/customers"
    And header Accept = "application/x-www-form-urlencoded"
    And form field email = "test@yopmail.com"
    And form field name = "karate test"
    And form field description = "test customer"
    When method POST
    Then status 200
    

