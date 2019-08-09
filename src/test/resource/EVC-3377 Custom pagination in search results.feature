#Author: Nidhin_Joseph@veritas_com
Feature: EVC-3377 Custom pagination in search results

  @EVC-3377
  Scenario: Verify default pagination available in the Mailbox
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    Then The default page size should be set to 30

 @EVC-3377
  Scenario: Verify user is able to set pagination in the Mailbox
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    When The user sets the Pagination in the Mailbox to the below value
      | Pagination | 100 |
    Then The number of emails displayed should equal the pagination selected
    When The user sets the Pagination in the Mailbox to the below value
      | Pagination | 50 |
    Then The number of emails displayed should equal the pagination selected

  @EVC-3377
  Scenario: Verify user is able to set pagination on search results
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the Mailbox
    And Runs a Search for the below Search Term
      | Search Term | Manage |
    When The user sets the Pagination in the Mailbox to the below value
      | Pagination | 100 |
    Then The number of emails displayed should equal the pagination selected
    When The user sets the Pagination in the Mailbox to the below value
      | Pagination | 50 |
    Then The number of emails displayed should equal the pagination selected
