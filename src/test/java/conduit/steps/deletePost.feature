@DeletePost
Feature: Users can delete articles


  Background:
    * url conduitUrl
    * call read('classpath:conduit/steps/createPost.feature')
    * def articleSlug = response.article.slug

  Scenario: Delete article
    Given path 'articles', articleSlug
    When method DELETE
    Then status 204