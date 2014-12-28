Feature: SOAP request instructing SIGNIANT to instruct agent to agent transfer

Background:
  Given I copy file "C:\Users\wow4i_000\Downloads\op1a-pal-mpeg2.mxf" to FTP server "node100.net2ftp.ru" into folder "asd"
  #todo this will be re-worked to upload all files from specified folder instead of uploading single file. Need to clarify with Bob.

Scenario: SOAP request instructing SIGNIANT to instruct agent to agent transfer
  When I send a SOAP request to <endpoint> with following request:
  |"test_operation"|"send_from_agent_A"|"send_from_agent_B|
  Then I should get a success result from the SOAP request
  And I verify that file "op1a-pal-mpeg2.mxf" exists in folder "asd" of ftp server "node100.net2ftp.ru"
  And I verify files are no longer in "\\networkshare\"