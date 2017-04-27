@assetsdates
Feature: Asset Dates

  As a GE ops user
  I want to edit the dates of the assets
  So that I can keep a track of when client has received

  Background:
    Given I am on the 'Login' page
    When I login with the following valid credentials
    Then the 'Current Requests' page is displayed


  Scenario: '-' is displayed for a requested asset if no required by date is available
    Given I am on the 'New Request' page using the following licence number '127093'
    And I complete the fulfilment request for 'Tutankhamun' and ProdID '2/3150/0001#002' with 'not required by date' selecting 'first asset'
    When I enter the following Licence Number '127093'
    Then 'Required By' date on the left Selection Details menu for Production ID '2/3150/0001#002' of 'Tutankhamun' is '-'

  Scenario: Required by date is displayed for a requested asset
    Given I am on the 'New Request' page using the following licence number '127093'
    And I complete the fulfilment request for 'Tutankhamun' and ProdID '2/3150/0001#002' with 'a required by date' selecting 'first asset'
    When I enter the following Licence Number '127093'
    Then 'Required By' date on the left Selection Details menu for Production ID '2/3150/0001#002' of 'Tutankhamun' is 'today's date'
    And  'Requested' date on the left Selection Details menu for Production ID '2/3150/0001#002' of 'Tutankhamun' is 'today's date'
    And  'Fulfilled' date on the left Selection Details menu for Production ID '2/3150/0001#002' of 'Tutankhamun' is '-'

  Scenario: Requested date can be edited and set to the past
    Given I am on the 'New Request' page using the following licence number '127093'
    And I complete the fulfilment request for 'Tutankhamun' and ProdID '2/3150/0002#002' with 'not required by date' selecting 'first asset'
    When I enter the following Licence Number '127093'
    Then I can edit and set the 'Requested' date to the past for 'Tutankhamun' and production ID '2/3150/0002#002'

  Scenario: Fulfilled date can be edited and set to the past
    Given I am on the 'New Request' page using the following licence number '127093'
    And I complete the fulfilment request for 'Tutankhamun' and ProdID '2/3150/0002#002' with 'not required by date' selecting 'first asset'
    When I enter the following Licence Number '127093'
    And I can change the status from 'Requested' to 'Fulfilled' for ProdId '2/3150/0002#002' and 'Tutankhamun' and licence number '127093'
    Then I can edit and set the 'Fulfilled' date to the past for 'Tutankhamun' and production ID '2/3150/0002#002'

#  Scenario: Multiple assets can be set to 'Fulfilled' at once
#    Given I am on the 'New Request' page using the following licence number '123333'
#    And I complete the fulfilment request for 'Vera - Series 2' and ProdID '1/7314/0007#002,1/7314/0009#002,1/7314/0010#002,1/7314/0008#002' with 'not required by date' selecting 'first asset'
#    When I enter the following Licence Number '123333'
#    Then I can set the status to 'Fulfilled' for multiple assets '1/7314/0007#002,1/7314/0008#002' of 'Vera - Series 2'
#    And 'Fulfilled' date on the left Selection Details menu for Production ID '1/7314/0008#002' of 'Vera - Series 2' is 'today's date'
#
#  Scenario: Multiple assets can be set to 'External Requested' at once
#    Given I enter the following Licence Number '123665'
#    When I can set the status to 'Requested' for multiple assets '1/9946/0001#001,1/9946/0004#001' of 'Hebrides: Islands on the Edge'
#    Then 'Requested' date on the left Selection Details menu for Production ID '1/9946/0001#001' of 'Hebrides: Islands on the Edge' is 'today's date'