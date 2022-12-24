Feature: Put Api Validation

  Background: 
    * url baseUrl
    Given path '/users/2'

  @reading-json
  Scenario Outline: Post Call Validation
    Given header Content-Type = 'application/json'
    * def body = read("classpath:apis/postBody.json")
    * set body.name = <name>
    * set body.job = <job>
    And request body
    When method put
    Then status <status>
    And match response.name == <name>

    Examples: 
      | name     | job       | status |
      | "Abdul"  | "Cashier" |    200 |
      | "Ikraam" | "CFO"     |    200 |
