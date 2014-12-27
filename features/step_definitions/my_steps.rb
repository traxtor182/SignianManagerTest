Given(/^I copy file "([^"]*)" to FTP server "([^"]*)" into folder "([^"]*)"$/) do |file, ftp_server, ftp_folder|
  require './utilities/ftp_helper'
  ftp = FtpHelper.new(ftp_server, 'wow4in@gmail.com', '00a029ca8b2c')
  ftp.send_file(file, ftp_folder)
end

And(/^I FTP these files to location (.*)$/) do |location|
  pending
end

When(/^I send a SOAP request to (.*) with following request:$/) do |endpoint, table|
  # table is a table.hashes.keys # => [:"test_operation", :"send_from_agent_A", :"send_from_agent_B]
  pending
end

Then(/^I should get a success result from the SOAP request$/) do
  pending
end

And(/^I verify files are no longer in "\\\\networkshare\\"$/) do
  pending
end