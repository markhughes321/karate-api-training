@signUp
Feature: Users can Login

  Background:
    * url conduitUrl
    * def expectedResponse = read('classpath:conduit/responses/logIn.json')
    * def dateMilliSeconds = function(){ return java.lang.System.currentTimeMillis() }
    * def now = 'Test-' + dateMilliSeconds()

  Scenario: Login
    Given path 'users', 'login'
    And request { user: { email: '#(now + "@gmail.com")', password: '#(now)' }}
    When method POST
    Then status 200
    And match response == expectedResponse