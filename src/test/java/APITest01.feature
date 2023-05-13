Feature: Testing scenarios for TMSandbox API

  Background:
    * def TMSandboxAPI = 'https://api.tmsandbox.co.nz/v1/Categories/6329/Details.json?catalogue=false'

  Scenario: Test URL status
    Given url TMSandboxAPI
    When method GET
    Then status 200
    * print 'Status is OK'

  Scenario: Validate that Name = 'Home & garden'
    Given url TMSandboxAPI
    When method GET
    Then status 200
    And match response.Name == 'Home & garden'
    * print 'Value of JSON field Name is Home & garden'

  Scenario: Validate that CanRelist = 'true'
    Given url TMSandboxAPI
    When method GET
    Then status 200
    And match response.CanRelist == true
    * print 'Value of JSON field CanRelist is true'

  Scenario: Validate that the Promotions array with Name = "Feature" has a Description that contains the text 'Better position in category'
    Given url TMSandboxAPI
    When method GET
    Then status 200
    And match response.Promotions contains deep [{ Name: 'Feature' , Description: 'Better position in category'}]
    * print 'Value of JSON array Promotions is as expected'
