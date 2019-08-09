#Author: Nidhin_Joseph@veritas_com
Feature: EVC-3383 New search moves user away from navigation tree

  @EVC-3383
  Scenario Outline: Verify that the Admin user is taken to the newly created search
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Navigates to the My Mailbox node
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Search with the below values
      | searchstring   | searchname   | searchtype   | istag   |
      | <searchstring> | <searchname> | <searchtype> | <istag> |
    Then The control should be transferred to the newly created search

    Examples: 
      | searchstring          | searchname            | searchtype | istag |
      | Attachments           | Attachments           | Ongoing    | TRUE  |
      | lightweight messaging | lightweight messaging | Ongoing    | TRUE  |
      | Email encryption      | Email encryption      | Ongoing    | TRUE  |
      | The whole process     | The whole process     | Standard   | FALSE |
      | (Gmail)               | (Gmail)               | Standard   | FALSE |

  #@EVC-3383
  Scenario: Verify that the Admin user is taken to the newly created Ongoing Search folder under My Mailbox
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Navigates to the My Mailbox node
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Ongoing Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that Admin the user is taken to the newly created Standard search folder under My Mailbox
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Navigates to the My Mailbox node
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Standard Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Reviewer user is taken to the newly created Ongoing Search folder under My Mailbox
    Given The "Reviewer" user Logs in to the DA Portal
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Ongoing Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Reviewer user is taken to the newly created Standard search folder under My Mailbox
    Given The "Reviewer" user Logs in to the DA Portal
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Standard Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Account user is taken to the newly created Ongoing Search folder under My Mailbox
    Given The "Account" user Logs in to the DA Portal
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a Simple Search

  #Then The control should be transferred to the newly created search
  #@EVC-3383
  Scenario: Verify that the Admin user is taken to the newly created Ongoing Search folder under Managed Accounts
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the New Search Node under Managed Accounts > Saved Searches
    And Saves a new Ongoing Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Admin user is taken to the newly created Ongoing Search folder under Managed Accounts
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Selects the New Search Node under Managed Accounts > Saved Searches
    And Saves a new Standard Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Reviewer user is taken to the newly created Ongoing Search folder under Managed Accounts
    Given The "Reviewer" user Logs in to the DA Portal
    And Selects the New Search Node under Managed Accounts > Saved Searches
    And Saves a new Ongoing Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Reviewer user is taken to the newly created Ongoing Search folder under Managed Accounts
    Given The "Reviewer" user Logs in to the DA Portal
    And Selects the New Search Node under Managed Accounts > Saved Searches
    And Saves a new Standard Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Admin user is taken to the newly created Ongoing Search folder under Unassigned Searches
    Given The "Admin" user Logs in to the DA Portal
    And Selects a Matter
    And Selects the New Search Node under Matters > Saved Searches
    And Saves a new Unassigned Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Admin user is taken to the newly created Ongoing Search folder under Assigned Searches
    Given The "Admin" user Logs in to the DA Portal
    And Selects a Matter
    And Selects the New Search Node under Matters > Saved Searches
    And Saves a new Assigned Search
    Then The control should be transferred to the newly created search

  #@EVC-3383
  Scenario: Verify that the Admin user is taken to the newly created Ongoing Search folder under My Mailbox
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Navigates to the My Mailbox node
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Ongoing Search
    Then The control should be transferred to the newly created search
