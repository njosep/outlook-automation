#Author: Nidhin_Joseph@veritas_com
Feature: EVC-3406 Allow typing of date into fields

  @EVC-3406
  Scenario: Verify a watermark is displayed to the Admin user when a search based on Dates is attempted
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    And Exapnds the Advanced Search Panel
    And Selects the below value from the Search Parameters dropdown
      | Selector | Date Sent |
    And Selects the below value from the Conditions dropdown
      | Condition | After |
    Then User can see the below watermark in the value textbox
      | DateFormat | MM/DD/YYYY |

  @EVC-3406
  Scenario: Verify that the Admin user can type in a date into the value field and run a search
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    And Exapnds the Advanced Search Panel
    And Selects the below value from the Search Parameters dropdown
      | Selector | Date Sent |
    And Selects the below value from the Conditions dropdown
      | Condition | After |
    And Enters the below Date in the value textbox and triggers a search
      | DateValue | 09/09/2001 |
    Then The Search should be successful

 @EVC-3406
  Scenario: Verify that the Reviewer can type in a date into the value field and run a search
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    And Exapnds the Advanced Search Panel
    And Selects the below value from the Search Parameters dropdown
      | Selector | Date Sent |
    And Selects the below value from the Conditions dropdown
      | Condition | After |
    And Enters the below Date in the value textbox and triggers a search
      | DateValue | 09/09/2011 |
    Then The Search should be successful

  @EVC-3406
  Scenario: Verify that an Account user can type in a date into the value field and run a search
    Given The "Account" user Logs in to the DA Portal
    And Exapnds the Advanced Search Panel
    And Selects the below value from the Search Parameters dropdown
      | Selector | Date Sent |
    And Selects the below value from the Conditions dropdown
      | Condition | After |
    And Enters the below Date in the value textbox and triggers a search
      | DateValue | 09/09/2001 |
    Then The Search should be successful
