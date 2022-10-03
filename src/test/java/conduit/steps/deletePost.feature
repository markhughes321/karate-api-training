@SignUp
Feature: Users can delete articles


  Background:
    * url conduitUrl
    * header authorization = 'Token ' + authToken

  Scenario: Delete article
    Given path 'articles', articleSlug
    When method DELETE
    Then status 204