@createPostController
Feature: Users can create posts


  Scenario: Create Post Controller
    * call read('classpath:conduit/steps/signUp.feature')
    * def userEmail = response.user.email
    * def userPassword = now

    * call read('classpath:conduit/steps/logIn.feature')
    * def authToken = response.user.token

    * call read('classpath:conduit/steps/createPost.feature')
    * def articleSlug = response.article.slug

    * call read('classpath:conduit/steps/getPost.feature')
    * match response.articles[0].title == '#(now)'

    * call read('classpath:conduit/steps/deletePost.feature')
    And match response == ''

    * call read('classpath:conduit/steps/getPost.feature')
    * match response.articles[0].title != '#(now)'