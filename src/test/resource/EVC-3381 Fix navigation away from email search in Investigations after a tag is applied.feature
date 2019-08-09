#Author: Nidhin_Joseph@veritas_com
Feature: EVC-3381 Fix navigation away from email search in Investigations after a tag is applied

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin Tag Selected emails from his Mailbox
    Given The "Admin" user Logs in to the DA Portal
    When The user navigates to Investigations Tab
    And Navigates to the My Mailbox node
    And Selects the New Search Node under My Mailbox > Saved Searches
    And Saves a new Ongoing Search
    Then The control should be transferred to the newly created search
    When The User selects 5 mails from the Grid
    And Selects the option "Tag selected emails"
    And Adds the tag with the Name "Tag 200" and Comment "New Tag"
    Then The User should be in the same search folder
    And The tag count for the selected Emails in the grid should be correct
    And the Reading Pane should display the tag name

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag Selected" emails from his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag All emails" from his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tags Current Page" emails from his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tags" an email from the reading pane from his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag Selected" emails from Saved Searches under his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag All emails" from Saved Searches under his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tags Current Page" emails from Saved Searches under his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tags" an email from the reading pane from Saved Searches under his Mailbox

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag Selected" emails from Managed Accounts

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag All emails" from Managed Accounts

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tags Current Page" emails from Managed Accounts

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag Selected" emails from Saved Searches under Managed Accounts

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tag All emails" from Saved Searches under Managed Accounts

  @EVC-3381
  Scenario: Verify that Tagging works when an Admin "Tags Current Page" emails from Saved Searches under Managed Accounts
