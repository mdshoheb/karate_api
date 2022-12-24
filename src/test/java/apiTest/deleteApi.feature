@smoke
Feature: Delete Api Validation

  Scenario: Delete Call Validation
    Given url "https://dummy.restapiexample.com/public/api/v1/delete/2"
    When method delete
    Then status 200
    And match response.status == "success"
    And match response.message == "Successfully! Record has been deleted"
    #And print respone
