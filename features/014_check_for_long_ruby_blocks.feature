Feature: Check for overly long ruby blocks

  In order to keep my cookbooks readable
  As a developer
  I want to identify if ruby blocks in my recipes are too long and should be extracted to libraries

  Scenario: No ruby blocks
    Given a cookbook that contains no ruby blocks
    When I check the cookbook
    Then the consider extracting ruby block warning 014 should not be displayed

  Scenario: Short ruby block
    Given a cookbook that contains a short ruby block
    When I check the cookbook
    Then the consider extracting ruby block warning 014 should not be displayed

  Scenario: Long ruby block
    Given a cookbook that contains a long ruby block
    When I check the cookbook
    Then the consider extracting ruby block warning 014 should be displayed