@GetPost
Feature: Users can get blog posts from Global Feed


  Background:
    * url conduitUrl
    * header authorization = 'Token ' + authToken
    * def expectedResponse = read('classpath:conduit/responses/getPost.json')
    * params { limit: 10, offset: 0 }

  Scenario: Get Posts
    Given path 'articles'
    When method GET
    Then status 200
    And match each response.articles == expectedResponse