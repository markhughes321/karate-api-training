@CreatePost
Feature: Users can Create blog posts


  Background:
    * url conduitUrl
    * header authorization = 'Token ' + authToken
    * def expectedResponse = read('classpath:conduit/responses/createPost.json')
    * def dateMilliSeconds = function(){ return java.lang.System.currentTimeMillis() }
    * def now = 'Test-' + dateMilliSeconds()

  Scenario: Create post
    Given path 'articles'
    And request {"article":{"title": '#(now)',"description": '#(now)',"body": '#(now)',"tagList": '#(now)'}}
    When method POST
    Then status 200
    And match response == expectedResponse
    And def articleSlug = response.article.slug