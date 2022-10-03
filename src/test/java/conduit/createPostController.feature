@createPostController
Feature: Create Post Controller


  Scenario:
    * call read('classpath:conduit/steps/signUp.feature')

    * call read('classpath:conduit/steps/logIn.feature')

    * call read('classpath:conduit/steps/createPost.feature')

    * call read('classpath:conduit/steps/getPost.feature')

    * call read('classpath:conduit/steps/deletePost.feature')