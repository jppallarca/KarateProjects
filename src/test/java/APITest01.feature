Feature: Initial testing

  Scenario: Test URL status
    Given url 'https://api.tmsandbox.co.nz/v1/Categories/6329/Details.json?catalogue=false'
    When method GET
    Then status 200

