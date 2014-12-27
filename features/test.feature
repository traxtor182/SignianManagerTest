Feature: SOAP request instructing SIGNIANT to instruct agent to agent transfer

Background:
  Given I copy file "C:\Users\wow4i_000\Downloads\LWAPluginInstaller.msi" to FTP server "node0.net2ftp.ru" into folder "asd"

Scenario: SOAP request instructing SIGNIANT to instruct agent to agent transfer
  When I send a SOAP request to <endpoint> with following request:
  |"test_operation"|"send_from_agent_A"|"send_from_agent_B|
  Then I should get a success result from the SOAP request
  And I verify files are no longer in "\\networkshare\"