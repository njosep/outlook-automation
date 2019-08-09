Feature: Outlook

  @owa-wiki
  Scenario Outline: Adding Folders
    Given a user with has a new email open in the Outlook Email page
      | username   | password   | receipient   | subject   |
      | <username> | <password> | <receipient> | <subject> |

    Examples: 
      | username                        | password        | receipient                                | subject      |
      | STUDY-PVSS-090986-0055@evcdublin.onmicrosoft.com | user@123 | drugtestmailbox@evcdublin.onmicrosoft.com | mailbox test |

      
        @owa-wiki2
  Scenario Outline: Sending Email
    Given a user with has a new email open in the Outlook Email page Send
      | username   | password   | receipient   | subject   |
      | <username> | <password> | <receipient> | <subject> |

    Examples: 
      | username                        | password        | receipient                                | subject      |
      | admin@evcdublin.onmicrosoft.com | FolderSync2019+ | STUDY-PVSS-090986-0055@evcdublin.onmicrosoft.com | mailbox test |
      