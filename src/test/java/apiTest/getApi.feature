@smoke
Feature: Get Api Validation

  Background: 
    * url baseUrl
    Given path '/users'

  Scenario: Test1
    Given param page = 2
    When method Get
    Then status 200
    And match response.page == 2
    And match response.data[2].id == 9
    And match response.data[3].email == "byron.fields@reqres.in"
    And print response
