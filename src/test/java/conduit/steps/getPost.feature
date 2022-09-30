@signUp
Feature: Users can Create blog posts

  Background:
    * url conduitUrl
    * def expectedResponse = read('classpath:conduit/responses/createPost.json')
    * def dateMilliSeconds = function(){ return java.lang.System.currentTimeMillis() }
    * def now = 'Test-' + dateMilliSeconds()

  Scenario: Create post
    Given path 'articles'
    And params = {limit=10, offset=0}
    And request {"article":{"title": '#(now)',"description": '#(now)',"body": '#(now)',"tagList": '#(now)'}}
    When method GET
    Then status 200
    And match response == expectedResponse imit=10&offset=0