@SignUp
Feature: Users can Sign Up


  Background:
    * url conduitUrl
    * def expectedResponse = read('classpath:conduit/responses/signUp.json')
    * def dateMilliSeconds = function(){ return java.lang.System.currentTimeMillis() }
    * def now = 'Test-' + dateMilliSeconds()

  Scenario: Sign Up
    Given path 'users'
    And request { user: { username: '#(now)', email: '#(now + "@gmail.com")', password: '#(now)' }}
    When method POST
    Then status 200
    And match response == expectedResponse
    * def userEmail = response.user.email
    * def userPassword = now