@breadcrumbs
Feature: Breadcrumbs

  As a GE ops user
  I want breadcrumbs
  So that I can easily step back through the user journey

  Background:
    Given I am on the 'Login' page
    When I login with the following valid credentials
    Then the 'Current Requests' page is displayed

  Scenario: 'Current Reqests' breadcrumb on the 'Overview' page functions properly
    Given  I enter the following Licence Number '123555'
    When I click on the breadcrumb for the 'Current-Requests' page
    Then the 'Current Requests' page is displayed

  Scenario: 'Overview' breadcrumb on the 'New Request' page functions properly
    Given  I am on the 'New Request' page using the following licence number '123555'
    When I click on the breadcrumb for the 'Overview' page
    Then the 'Overview' page is displayed

  Scenario: 'Overview' breadcrumb on the 'Send Request' page functions properly
    Given  I am on the 'Send Request' page using the following licence number '123555' series 'Lewis - Series 8' and ProdID '1/5634/0030/31#001' selecting 'first asset'
    When I click on the breadcrumb for the 'Overview' page
    Then the 'Overview' page is displayed


  #  Scenario: 'Overview' breadcrumb on the 'Request' page functions properly
#    Given I am on the 'Request Summary' page using the following licence number
#      | 123555 |
#    When I click on the breadcrumb for the 'Overview' page
#    Then the 'Overview' page is displayed



#  Scenario: 'Home' breadcrumb on the 'New Request' page functions properly
#    Given I am on the 'New Request' page using the following licence number
#      | 123555 |
#    When I click on the breadcrumb for the 'Current Requests' page
#    Then the 'Current Requests' page is displayed

#
#  Scenario: 'Home' breadcrumb on the 'Request Summary' page functions properly
#    Given I am on the 'Request Summary' page using the following licence number
#      | 123555 |
#    When I click on the breadcrumb for the 'Current Requests' page
#    Then the 'Current Requests' page is displayed
#
#  Scenario: 'Overview' breadcrumb on the 'Request' page functions properly
#    Given I am on the 'Request Summary' page using the following licence number
#      | 123555 |
#    When I click on the breadcrumb for the 'Overview' page
#    Then the 'Overview' page is displayed
#
#  Scenario: 'New Request' breadcrumb on the 'Request Summary' page functions properly
#    Given I am on the 'Request Summary' page using the following licence number
#      | 123555 |
#    When I click on the breadcrumb for the 'New Request' page
#    Then the 'New Request' page is displayed