@ConnectRegression
Feature: Test that the TPN Connect different Brexit consignment entry functions works
    As a user
    I want to be able to put on a consignment via TPN Connect using the Brexit Form

    
@C2327
    Scenario Outline: Testing Standard Consignment Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2327"    | "CKC"      | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "SS"       | "TEST"  | "0123456789" | "FF"   | "1"      | "150"  |