@debug
Feature: Sample test

  Background:
    * url googleUrl

  Scenario: Make sample GET request
    Given url googleUrl
    When method Get
    Then status 200