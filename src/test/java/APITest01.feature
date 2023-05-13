Feature: Initial testing

  Background:
    * def TMSandboxAPI = 'https://api.tmsandbox.co.nz/v1/Categories/6329/Details.json?catalogue=false'

  Scenario: Test URL status
    Given url TMSandboxAPI
    When method GET
    Then status 200

  Scenario: Validate that Name = "Home & garden"
    Given url TMSandboxAPI
    When method GET
    Then status 200
    And match response.Name == 'Home & garden'
