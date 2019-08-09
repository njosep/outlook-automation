#Author: Nidhin_Joseph@veritas_com
#@dux
Feature: EVC-3493 Not enough space for search criteria

  @EVC-3493
  Scenario: Verify that the search criteria panel expands to accomodate additionla search criteria
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    And Exapnds the Advanced Search Panel
    And Selects the below value from the Search Parameters dropdown
      | Selector | Date Sent |
    And Selects the below value from the Conditions dropdown
      | Condition | After |
    And Enters the below Date in the value textbox
      | DateValue | 09/09/2001 |
    And Adds 15 more search criteria
  
