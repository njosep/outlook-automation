#Author: Nidhin_Joseph@veritas_com
Feature: EVC-3375 Improve resizing of emails when reviewing them

  @EVC-3375
  Scenario: Verify that the Admin user can expand the Reading Frame
    Given The "Admin" user Logs in to the DA Portal
    And Selects a Matter
    And Selects the Review All Node for the selected Matter
    Then the user should be able to "expand" the Reading Frame

  @EVC-3375
  Scenario: Verify that the Admin user can contract the Reading Frame
    Given The "Admin" user Logs in to the DA Portal
    And Selects a Matter
    And Selects the Review All Node for the selected Matter
    Then the user should be able to "contract" the Reading Frame
