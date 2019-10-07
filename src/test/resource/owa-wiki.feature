Feature: Outlook

  @owa-wiki
  Scenario Outline: Adding Folders
    Given a user with has a new email open in the Outlook Email page
      | username   | password   | receipient   | subject   |
      | <username> | <password> | <receipient> | <subject> |

    Examples: 
      | username                        | password        | receipient                                | subject      |
      | STUDY-USW03@teamdefiant.onmicrosoft.com | password | drugtestmailbox@evcdublin.onmicrosoft.com | mailbox test |

      
  @owa-wiki
  Scenario Outline: Sending Email
    Given a user with has a new email open in the Outlook Email page Send
      | username   | password   | receipient   | subject   |
      | <username> | <password> | <receipient> | <subject> |

    Examples: 
      | username                        | password        | receipient                                | subject      |
      | admin@teamdefiant.onmicrosoft.com | password |EVC-3595@teamdefiant.onmicrosoft.com | mailbox test |
      
