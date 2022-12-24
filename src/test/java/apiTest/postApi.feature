
Feature: Post Api Validation

  Background: 
    * url baseUrl
    Given path '/users'

  @inline-json
  Scenario Outline: Post Call Validation
    Given header Content-Type = 'application/json'
    * def body = {"name": <name>, "job": <job>}
    And request body
    When method post
    Then status <status>

    Examples: 
      | name    | job        | status |
      | "Steve" | "Engineer" |    201 |
      | "Elon"  | "CEO"      |    201 |

  @reading-json
  Scenario Outline: Post Call Validation
    Given header Content-Type = 'application/json'
    * def body = read("classpath:apis/postBody.json")
    * set body.name = <name>
    * set body.job = <job>
    And request body
    When method post
    Then status <status>
    And match response.name == <name>

    Examples: 
      | name    | job        | status |
      | "Abdul" | "Engineer" |    201 |
      | "Ikraam"  | "CEO"      |    201 |
