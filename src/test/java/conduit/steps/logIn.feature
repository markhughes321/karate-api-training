@LogIn
Feature: Users can Login


  Background:
    * url conduitUrl
    * def expectedResponse = read('classpath:conduit/responses/logIn.json')
    * def userEmail = 'Test-1665120306813@gmail.com'
    * def userPassword = 'Test-1665120306813'

  Scenario: Login
    Given path 'users', 'login'
    And request { user: { email: '#(userEmail)', password: '#(userPassword)' }}
    When method POST
    Then status 200
    And match response == expectedResponse